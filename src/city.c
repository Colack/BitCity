#include "city.h"

char player_name[MAX_STRING] = "";
char player_cityname[MAX_STRING] = "";
char player_referred[MAX_STRING] = "";

int money;
int day;
int homes;
int factories;
int stores;
int workers;

void train_start() {
    printf("Hey, get up! You never want to fall asleep on a train!");
    sleep(1);
    printf("We've been traveling for a while now, and we have another stop, I want to make sure you don't miss it!\n");
    printf("Now, before I forget, what is your name?\n");
    scanf("%s",player_name);
    sleep(1);
    printf("%s... What a good name! Suits you very well...\n");
    printf("Hmmm, now what would you like to be refered as? (Mr., Mrs.)\n");
    scanf("%s",player_referred);
    sleep(1);
    printf("\nOk....\nNice to meet you %s %s!\n",player_referred, player_name);
    printf("Woops! I forgot to introduce myself, I'm Jack! I usually travel from city to city, but I'm planning on going to a new town. I'll just follow you!\n");
    printf("Talking about that, where are you headed?\n");
    scanf("%s",player_cityname);
    sleep(1);
    printf("%s... I've never heard of that city!\n",player_cityname);
    printf("I actually come from a city called \"Text City\". I don't think a lot of people have heard of it, but it's actually very nice there!\n");
    printf("We even have a construction company there called Spoon Construction!\n");
    printf("...");
    sleep(1);
    printf("Oh? I hear the train stopping, that must mean that we are here! Nice meeting you %s, I can't wait to experience %s!\n",player_name, player_cityname);
    sleep(3);

    for (int i = 0; i < 10; i++) {
        printf("\n");
    }
}

void game() {
    
}
