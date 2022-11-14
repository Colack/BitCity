#include "shell.h"

bool shownStartMessage = false;
bool commandFound = false;
char consoleInput[MAX_STRING];

void bit_printMain() {
    PlaySound("assets/blipSelect.wav", NULL, SND_ASYNC);
    printf("%s (c)%s %d\nV%s\n Licensed under %s.\n", PROGRAM_NAME, MAINTAINER, YEAR, VERSION, LICENSE);
    printf(" Type \"help\" to begin.\n");
}

void bit_start() {
    train_start();
}

void bit_help() {
    PlaySound("assets/blipSelect.wav", NULL, SND_ASYNC);
    printf("\nWelcome to %s, a virtual city where you can create your own virtual city.\n", PROGRAM_NAME);
    printf("Build, develop, and create the ultimate city. The only limit is your creativity.\n\n");
    printf("Commands:\n");
    printf("    help : Display this help menu.\n");
    printf("    start : Start text city.\n");
    printf("    saves : Manage save files.\n");
}

void bit_saves() {
    PlaySound("assets/blipSelect.wav", NULL, SND_ASYNC);
    printf("Menu not finished.\n");
}

void bit_version() {
    PlaySound("assets/blipSelect.wav", NULL, SND_ASYNC);
    printf("%s V%s\n", PROGRAM_NAME, VERSION);
}

void bit_shell() {
    while (true) {
        consoleInput[MAX_STRING] = "";

        if (!shownStartMessage) {
            bit_printMain();
            shownStartMessage = true;
        }
        printf("BitCity : ");

        scanf("%s",consoleInput);

        if (strcmp(consoleInput, "help")==0) {
            bit_help();
        } else if (strcmp(consoleInput, "start")==0) {
            bit_start();
        } else if (strcmp(consoleInput, "version")==0) {
            bit_version();
        } else if (strcmp(consoleInput, "saves")==0) {
            bit_saves();
        } else if (strcmp(consoleInput, "exit")==0) {
            PlaySound("assets/exit.wav", NULL, SND_ASYNC);
            printf("Aborting...\n");
            sleep(1);
            break;
        }
    }
}
