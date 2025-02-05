from pathlib import Path
from time import sleep

import html2text
import requests
import re

from bs4 import BeautifulSoup

headers = {
    'User-Agent': 'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) '
                  'Chrome/123.0.0.0 Mobile Safari/537.36',
    'Accept': 'application/json, text/javascript, */*; q=0.01',
    'Content-Type': 'application/json',
    'Referer': 'https://www.acwing.com/',
    'Cookie': 'b-user-id=39c6e442-5cad-78dd-bace-5251b018adc9; csrftoken=ZmB1H5LEagSngFq0sEWRO0hzLNMW3oAF1u3L4KIDYKtb6kXppCvhhXNCZ6z5mwil; sessionid=ogjwvbxkoore6903p7x5mst1p0h41zwa',
}

# insert_problem_algorithm_bank_sql =
insert_problem_algorithm_tags_sql = "insert problem_algorithm_tags(tag_id, problem_id) values()"

# 用于存储关系-----列表模式，比如 []
total_category_map = {}


def get_activity_problem(activity_id):
    '''
    获取课程、类别、题目关系，下面是例子
    {
      "第六章 基础算法": {
        "位运算": [
          "92"
        ],
        "递推与递归": [
          "97",
          "99",
          "100"
        ],
        "前缀和与差分": [
          "101",
          "102"
        ],
        "二分": [
          "104",
          "115"
        ],
        "排序": [
          "107",
          "108",
          "109"
        ],
        "RMQ": [
          "1275"
        ]
      },
    }
    :param activity_id:课程ID
    :return:
    '''
    url = "https://www.acwing.com/activity/content/" + str(activity_id) + "/"
    resp = requests.get(url, headers=headers)
    html_content = resp.text

    # 1.获取所有的章节名称
    pattern_title = r'<span class="week_title">(.*?)</span>'
    chapter_name_list = re.findall(pattern_title, html_content)

    # 2.获取所有章节名称的各个题目列表的html
    # 使用 BeautifulSoup 解析 HTML
    soup = BeautifulSoup(html_content, 'html.parser')

    # 找到所有 class="center-block" 的 div
    center_blocks = soup.find_all('div', class_='center-block')

    # 遍历每个 center-block 并提取其内部的 HTML得到各个章节、算法大类型、题目列表的关系
    for index, block in enumerate(center_blocks, start=1):
        chapter_html_content = block.prettify()

        # 使用 BeautifulSoup 解析 HTML
        soup = BeautifulSoup(chapter_html_content, 'html.parser')

        # 找到所有算法类别和题目
        rows = soup.find_all('div', class_='row justify-content-center align-self-center')

        print(f"章节名称：{chapter_name_list[index - 1]}")
        total_category_map[chapter_name_list[index - 1]] = {}
        for row in rows:
            # 提取算法类别
            algorithm_category = row.find('span', class_='dayname').text.strip()
            print(f"算法类别: {algorithm_category}")

            total_category_map[chapter_name_list[index - 1]][algorithm_category] = []
            # 提取所有题目链接中的数值
            problem_links = row.find_all('a', class_='clock-problem-title')
            for link in problem_links:
                problem_url = link['href']
                content_id = problem_url.split('/')[-2]  # 提取 URL 中的数值部分
                total_category_map[chapter_name_list[index - 1]][algorithm_category].append(content_id)

            print("-" * 40)
        # print("-" * 40)

    # 遍历 total_catetgory_map，查看每个题目的真实problem_id
    for chapter, categories in total_category_map.items():
        for category,contentIdList in categories.items():
            index = 0
            for content_id in contentIdList:
                print(content_id)
                url_0 = f"https://www.acwing.com/activity/content/problem/content/{content_id}/"
                resp0 = requests.get(url_0, headers=headers)
                text0 = resp0.text
                obj_problem_content = re.compile(
                    r'<a class="label label-info" href="https://www.acwing.com/problem/content/(?P<problem_id>.*?)/',
                    re.DOTALL)
                problemss_id_list = obj_problem_content.finditer(text0)
                for problem_idd in problemss_id_list:
                    total_category_map[chapter][category][index] = problem_idd.group("problem_id")
                    index +=1
                    sleep(1)


if __name__ == '__main__':
    activity_id = int(input("1.请输入课程ID："))
    index = int(input("2.请输入题号开始下标："))
    activity_name = input("3.请设置你需要创建课程的名称：")
    activity_description = input("4.请你设置课程的描述信息：")
    creater = input("5.请输入创建用户名称：")
    course_id = int(input("6.课程编号设置："))

    with open("./acwing/problem_insert.sql", mode='w', encoding='utf-8') as content_insert:
        course_insert = f"insert into course(course_title, course_title_description, create_name, avatar, num, create_time, course_description) values({activity_name}, {activity_description}, {creater}, 'http://mogullzr001.oss-cn-beijing.aliyuncs.com/2024/08/1f198b2f7c03438ab5bba2745cfed653.jpeg', 0, '2025-01-23 12:00:00', {activity_description})\n"
        content_insert.writelines(course_insert)

    # 1.获取课程、类别、题目关系，下面是例子
    get_activity_problem(activity_id)

    # 2.通过题目编号进入对应的题目
    print(total_category_map)

    folder_path = Path('acwing')
    folder_path.mkdir(parents=True, exist_ok=True)

    with open("./acwing/problem_insert.sql", mode='w', encoding='utf-8') as content_insert:
        num_main = 1
        for chapter, categories in total_category_map.items():
            num_little = 1
            parent_folder = f"{num_main}.{chapter}"

            for category, problemIdList in categories.items():
                category = category.replace("*", "算法")
                little_folder = f"{num_little}.{category}"

                for problem_id in problemIdList:
                    url = f"https://www.acwing.com/problem/content/{problem_id}/"
                    resp = requests.get(url, headers=headers)
                    problem_content = resp.text

                    # 获取题目内容信息
                    obj_problem_content = re.compile(
                        r'<div class="ui bottom attached tab active martor-preview" data-tab="preview-tab-content">\s*'
                        r'(?P<problem_content>.*?)'
                        r'</div>', re.DOTALL)
                    problems_content = obj_problem_content.finditer(problem_content)

                    # 获取题目名称
                    obj_problem_name = re.compile(
                        r'<title>(?P<problem_id>.*?). (?P<problem_name>.*?) - AcWing题库</title>', re.DOTALL)
                    problems_name = obj_problem_name.finditer(problem_content)

                    problem_difficulty = ""
                    # 获取题目难度：简单
                    obj_problem_difficulty = re.compile(
                        r'<span class="label label-success round" style="float:right;">(?P<problem_difficulty>.*?)</span>',
                        re.DOTALL)
                    problems_difficulty = obj_problem_difficulty.finditer(problem_content)

                    for problemm_difficulty in problems_difficulty:
                        problem_difficulty = problemm_difficulty.group("problem_difficulty")

                    # 获取难度：中等
                    if problem_difficulty == "":
                        obj_problem_difficulty = re.compile(
                            r'<span class="label label-warning round" style="float:right;">(?P<problem_difficulty>.*?)</span>',
                            re.DOTALL)
                        problems_difficulty = obj_problem_difficulty.finditer(problem_content)
                        for problemm_difficulty in problems_difficulty:
                            problem_difficulty = problemm_difficulty.group("problem_difficulty")

                    # 获取难度：困难
                    if problem_difficulty == "":
                        obj_problem_difficulty = re.compile(
                            r'<span class="label label-danger round" style="float:right;">(?P<problem_difficulty>.*?)</span>',
                            re.DOTALL)
                        problems_difficulty = obj_problem_difficulty.finditer(problem_content)
                        for problemm_difficulty in problems_difficulty:
                            problem_difficulty = problemm_difficulty.group("problem_difficulty")

                    # 获取题目的时间和空间
                    obj_problem_limit = re.compile(
                        r'时/空限制：.*?<span style="float:right;">(?P<problem_limit_time>.*?)s / (?P<problem_limit_memory>.*?)MB</span>',
                        re.DOTALL)
                    problems_limit = obj_problem_limit.finditer(problem_content)

                    # 获取算法标签
                    # pattern = r'let keywords = "([^"]+)"'
                    # match = re.search(pattern, problem_content)
                    # problem_algorithm_value = ""
                    #
                    # if match:
                    #     keywords_value = match.group(1)
                    #     if keywords_value.index(",") != -1:
                    #         keywords_value = keywords_value.split(",")
                    # else:
                    #     print("未找到 problem_algorithm_value 变量")

                    for problem in problems_content:
                        for problemm_name in problems_name:
                            for problem_limit in problems_limit:
                                # 题目名称
                                problem_name = problemm_name.group("problem_name")

                                # 题目内容描述
                                problem_content = problem.group("problem_content")
                                ht = html2text.HTML2Text()
                                ht.bypass_tables = False
                                ht.mark_code = True
                                ht.code = True

                                result = ht.handle(problem_content)
                                result = result.replace("[code]\n", "").replace("[/code]\n", "")
                                problem_description = result
                                result = f'# {index}.{problem_name}\n' + result + "\n## 思路\n> \n## 代码\n```c++\n```"

                                # 题目时间限制
                                problem_limit_time = problem_limit.group("problem_limit_time")
                                problem_limit_memory = problem_limit.group("problem_limit_memory")

                                folder_path = Path(f"./acwing/{num_main}.{chapter}/{num_little}.{category}/{index}.{problem_name}")
                                folder_path.mkdir(parents=True, exist_ok=True)
                                with open(f'./acwing/{parent_folder}/{little_folder}/{index}.{problem_name}/{index}.{problem_name}.md', mode='w',
                                          encoding='utf-8') as f:
                                    f.write(result)

                                # 替换之后再插入
                                problem_description = problem_description.replace('\\', '\\\\').replace('"', '\\"')

                                # 插入题目信息
                                content_insert.writelines(
                                    f"insert problem_algorithm_bank(problem_id, chinese_name,difficulty_name, "
                                    f"create_by_id, create_by_name, create_time, update_by_id, update_by_name, "
                                    f"update_time, source_name, test_total, ac_total, description) "
                                    f"values({index},'{problem_name}','{problem_difficulty}',9, 'Mogullzr', "
                                    f"'2025-01-23 12:00:00', 9, 'Mogullzr', '2025-01-23 12:00:00', 'ByteOJ原创', 0, 0, \"{problem_description}\");\n")

                                # 插入时间、空间限制
                                content_insert.writelines(f"insert problem_algorithm_limit(problem_id,cpu_limit,"
                                                          f"memory_limit,create_by_id,create_by_name,create_time) "
                                                          f"values({index},{problem_limit_time},{problem_limit_memory}, "
                                                          f"9, 'Mogullzr', '2025-01-23 12:00:00');\n\n")

                                # 插入
                                sleep(1)

                    index += 1
                    print(index)
                # 题目设置完成之后，插入类别信息
                content_insert.writelines(f"insert course_problems(course_problems, problem_algorithm_type, "
                                          f"problem_id_list, course_id, create_time, update_time) "
                                          f"values({chapter}, {category}, {problemIdList}, {course_id}, "
                                          f"'2025-01-23 12:00:00','2025-01-23 12:00:00');\n")

                num_little += 1
            content_insert.writelines(f"insert course_problems_type(course_id, course_problems) values({course_id}, {chapter})\n")
            num_main += 1