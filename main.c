#include<stdio.h>
#include<errno.h>
int start(int i);
int ft_strcmp(char *s1, char *s2);
char *ft_strcpy(char *s1, char *s2);
int ft_strlen(char *s1);
char *ft_strdup(char *s);
ssize_t ft_write(int fildes, const void *buf, size_t nbyte);

int main()
{

    printf("%zd", ft_write(1, "salah\n", 6));
    return(0);
}