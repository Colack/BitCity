#include "shell.h"

int main(int argc, char argv[MAX_STRING]) {
    char *dir = getcwd(NULL, 0);
    DIR* dir = opendir("assets");

    const char FILE_NAME[MAX_STRING] = "include.h";

    int count = 0;
    FILE *in_file;
    
    int ch;

    if (dir) {
        closedir(dir);
        in_file = fopen(FILE_NAME, "r");
        if (in_file == NULL) {
            printf("This is a invalid copy of Bit City.\n");
            printf("Please download the current release of %s from %s.\n", PROGRAM_NAME, DOWNLOAD_LINK);
            printf("Aborting...\n");
            return 1;
        } else {
            bit_shell();
        }
    } else {
        printf("Assets folder does not exist.\n");
        printf("Please download the current release of %s from %s.\n", PROGRAM_NAME, DOWNLOAD_LINK);
        printf("Aborting...\n");
        return 1;
    }
    return 0;
}
