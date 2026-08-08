package com.example.backend.utils;

import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class CodeSimilarityFeatureUtilTest {
    @Test
    public void normalizedEquivalentCodeShouldScoreHigher() {
        String first = "public class Main { public static void main(String[] args) { int sum = 0; for (int i = 0; i < 10; i++) sum += i; System.out.println(sum); } }";
        String second = "public class Demo { public static void main(String[] values) { int result = 0; for (int index = 0; index < 10; index++) result += index; System.out.println(result); } }";
        String different = "public class Demo { public static void main(String[] values) { int result = 1; while (result < 1000) result *= 2; System.out.println(result); } }";

        CodeSimilarityFeatureUtil.Features equivalent = CodeSimilarityFeatureUtil.compare(first, second);
        CodeSimilarityFeatureUtil.Features unrelated = CodeSimilarityFeatureUtil.compare(first, different);

        assertTrue(equivalent.finalScore(0.8) > unrelated.finalScore(0.8));
        assertTrue(equivalent.getAstScore() >= 0.5);
    }

    @Test
    public void differentCppImplementationsShouldNotBeHighClone() {
        String first = """
                #include <stdio.h>
                #include <string.h>
                int A[50005]; long long S[50005]; int sum_cnt[50005][1002];
                int main() { int n; scanf("%d", &n); for (int i = 1; i <= n; ++i) scanf("%d", &A[i]);
                S[0] = 0; for (int i = 1; i <= n; ++i) S[i] = S[i - 1] + A[i];
                memset(sum_cnt[0], 0, sizeof(sum_cnt[0]));
                for (int i = 1; i <= n; ++i) { int val = A[i]; memcpy(sum_cnt[i], sum_cnt[i - 1], sizeof(sum_cnt[i]));
                for (int v = 1; v <= val; ++v) sum_cnt[i][v]++; }
                int q; scanf("%d", &q); while (q--) { int l, r; scanf("%d%d", &l, &r); int k = r-l+1;
                long long sum = S[r] - S[l-1]; int v = sum/k+1; printf("%d\\n", v > 1000 ? 0 : sum_cnt[r][v]-sum_cnt[l-1][v]); } return 0; }
                """;
        String second = """
                #include <iostream>
                #include <vector>
                #include <algorithm>
                using namespace std;
                const int MAXN = 50005; const int BLOCK_SIZE = 225;
                int A[MAXN]; long long prefix[MAXN]; int block_id[MAXN]; int sorted_block[500][BLOCK_SIZE];
                int block_size, total_blocks;
                void preprocess(int n) { block_size = BLOCK_SIZE; total_blocks = (n+BLOCK_SIZE-1)/BLOCK_SIZE;
                prefix[0]=0; for(int i=1;i<=n;++i) prefix[i]=prefix[i-1]+A[i];
                for(int i=1;i<=n;++i) block_id[i]=(i-1)/block_size;
                for(int b=0;b<total_blocks;++b){ int start=b*block_size+1, end=min((b+1)*block_size,n), idx=0;
                for(int i=start;i<=end;++i) sorted_block[b][idx++]=A[i]; sort(sorted_block[b],sorted_block[b]+idx); } }
                int query(int l,int r){ int len=r-l+1; long long sum=prefix[r]-prefix[l-1], count=0;
                for(int i=l;i<=r;++i) if(1LL*A[i]*len>sum) ++count; return count; }
                int main(){ios::sync_with_stdio(false);cin.tie(nullptr);int n,q;cin>>n;for(int i=1;i<=n;++i)cin>>A[i];preprocess(n);cin>>q;while(q--){int l,r;cin>>l>>r;cout<<query(l,r)<<'\\n';}}
                """;
        CodeSimilarityFeatureUtil.Features features = CodeSimilarityFeatureUtil.compare(first, second);
        assertTrue("AST fallback should not be template-only high similarity", features.getAstScore() < 0.72);
        assertTrue("combined score should not be high from embedding alone", features.finalScore(0.80) < 0.75);
    }

    @Test
    public void renamedCppBlockSolutionShouldRemainHighRisk() {
        String first = """
                #include <iostream>
                #include <algorithm>
                using namespace std;
                const int MAX = 50005, BLOCK = 225;
                int arr[MAX], blockId[MAX], sortedBlock[500][BLOCK]; long long prefix[MAX];
                void preprocess(int n) { prefix[0]=0; for(int i=1;i<=n;i++) prefix[i]=prefix[i-1]+arr[i];
                for(int i=1;i<=n;i++) blockId[i]=(i-1)/BLOCK;
                for(int b=0;b<(n+BLOCK-1)/BLOCK;b++){int start=b*BLOCK+1,end=min((b+1)*BLOCK,n),idx=0;
                for(int i=start;i<=end;i++)sortedBlock[b][idx++]=arr[i];sort(sortedBlock[b],sortedBlock[b]+idx);}}
                int query(int l,int r){int len=r-l+1;long long sum=prefix[r]-prefix[l-1];int count=0;
                int left=blockId[l],right=blockId[r];if(left==right){for(int i=l;i<=r;i++)if(1LL*arr[i]*len>sum)count++;return count;}
                for(int i=l;i<=(left+1)*BLOCK;i++)if(1LL*arr[i]*len>sum)count++;
                for(int i=right*BLOCK+1;i<=r;i++)if(1LL*arr[i]*len>sum)count++;
                for(int b=left+1;b<right;b++){int low=0,high=BLOCK;while(low<high){int mid=(low+high)/2;
                if(1LL*sortedBlock[b][mid]*len>sum)high=mid;else low=mid+1;}count+=BLOCK-low;}return count;}
                """;
        String renamed = """
                #include <stdio.h>
                #include <algorithm>
                using namespace std;
                #define MAXN 50005
                #define BLOCK_SIZE 225
                int A[MAXN], block_id[MAXN], sorted_block[500][BLOCK_SIZE]; long long prefix[MAXN];
                void preprocess(int n) { prefix[0]=0; for(int index=1;index<=n;index++) prefix[index]=prefix[index-1]+A[index];
                for(int index=1;index<=n;index++) block_id[index]=(index-1)/BLOCK_SIZE;
                for(int block=0;block<(n+BLOCK_SIZE-1)/BLOCK_SIZE;block++){int begin=block*BLOCK_SIZE+1,finish=min((block+1)*BLOCK_SIZE,n),pos=0;
                for(int index=begin;index<=finish;index++)sorted_block[block][pos++]=A[index];sort(sorted_block[block],sorted_block[block]+pos);}}
                int query(int begin,int finish){int length=finish-begin+1;long long total=prefix[finish]-prefix[begin-1];int answer=0;
                int left=block_id[begin],right=block_id[finish];if(left==right){for(int index=begin;index<=finish;index++)if((long long)A[index]*length>total)answer++;return answer;}
                for(int index=begin;index<=(left+1)*BLOCK_SIZE;index++)if((long long)A[index]*length>total)answer++;
                for(int index=right*BLOCK_SIZE+1;index<=finish;index++)if((long long)A[index]*length>total)answer++;
                for(int block=left+1;block<right;block++){int low=0,high=BLOCK_SIZE;while(low<high){int middle=(low+high)/2;
                if((long long)sorted_block[block][middle]*length>total)high=middle;else low=middle+1;}answer+=BLOCK_SIZE-low;}return answer;}
                """;
        CodeSimilarityFeatureUtil.Features features = CodeSimilarityFeatureUtil.compare(first, renamed);
        assertTrue("copied core should have high containment", features.getTokenContainmentScore() >= 0.75);
        assertTrue("renamed clone should be high risk", features.finalScore(0.80) >= 0.82);
    }
}
