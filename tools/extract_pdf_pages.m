#import <Foundation/Foundation.h>
#import <PDFKit/PDFKit.h>

static void writeAll(FILE *output, const void *bytes, size_t length) {
    const unsigned char *cursor = (const unsigned char *)bytes;
    while (length > 0) {
        size_t written = fwrite(cursor, 1, length, output);
        if (written == 0) {
            perror("fwrite");
            exit(1);
        }
        cursor += written;
        length -= written;
    }
}

int main(int argc, const char *argv[]) {
    @autoreleasepool {
        if (argc != 3) {
            fprintf(stderr, "Usage: %s input.pdf output.jsonl\n", argv[0]);
            return 2;
        }

        NSString *inputPath = [NSString stringWithUTF8String:argv[1]];
        NSString *outputPath = [NSString stringWithUTF8String:argv[2]];
        PDFDocument *document = [[PDFDocument alloc] initWithURL:[NSURL fileURLWithPath:inputPath]];
        if (!document) {
            fprintf(stderr, "Could not open PDF: %s\n", argv[1]);
            return 3;
        }

        FILE *output = fopen(outputPath.fileSystemRepresentation, "wb");
        if (!output) {
            perror("fopen output");
            return 4;
        }

        fprintf(stderr, "Extracting %ld PDF pages using the embedded text layer (no OCR).\n", (long)document.pageCount);
        for (NSUInteger index = 0; index < document.pageCount; index++) {
            @autoreleasepool {
                PDFPage *page = [document pageAtIndex:index];
                NSString *text = page.string ?: @"";
                NSDictionary *record = @{ @"page": @(index + 1), @"text": text };
                NSError *error = nil;
                NSData *json = [NSJSONSerialization dataWithJSONObject:record options:NSJSONWritingFragmentsAllowed error:&error];
                if (!json) {
                    fprintf(stderr, "JSON encoding failed at page %lu: %s\n", (unsigned long)(index + 1), error.localizedDescription.UTF8String);
                    fclose(output);
                    return 5;
                }
                writeAll(output, json.bytes, json.length);
                writeAll(output, "\n", 1);
            }
            if ((index + 1) % 500 == 0 || index + 1 == document.pageCount) {
                fprintf(stderr, "Extracted %lu / %ld pages\n", (unsigned long)(index + 1), (long)document.pageCount);
                fflush(output);
            }
        }

        if (fclose(output) != 0) {
            perror("fclose output");
            return 6;
        }
    }
    return 0;
}
