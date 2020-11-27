#include<stdio.h>

int start(int i);
int ft_strcmp(char *s1, char *s2);
char *ft_strcpy(char *s1, char *s2);
int ft_strlen(char *s1);
int main()
{
    char s1[5] = "157";

    printf("%d\n", ft_strlen(s1));
    return(0);
}