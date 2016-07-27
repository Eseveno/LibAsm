#include "includes/libasm.h"
#include <fcntl.h>
#include <stdio.h>

int main (int arg, char **argv)
{
  (void)arg;
  int test = 4;
  int testcopy = test;
  char test2[22] = "012345678";
  char test2copy[10] = "012345678";

  test2[9] = '\0';
  test2copy[9] = '\0';
  ft_bzero(&test2[5], 4);
  ft_bzero(&test, sizeof(int));

  bzero(&test2copy[5], 4);
  bzero(&testcopy, sizeof(int));


  printf(" Mon test  = %d , MOn test2 %s \n", test, test2);
  printf(" le vrai test  = %d , le vrai test2 %s \n", testcopy, test2copy);
  ft_strcat(test2, test2copy);
  printf(" un petit cat %s \n", test2);
  char testIs = -128;
  while (testIs < 127)
  {
  	int value = ft_isdigit(testIs);
  	int value2 = ft_isalpha(testIs);
    int value3 = ft_isalnum(testIs);
    int value4 = ft_isascii(testIs);
  	if (value)
  		printf("%d un digit :%c\n",(int)testIs ,testIs);
  	if (value2)
  		printf("une lettre :%c\n", testIs);
    if (value3)
      printf("une lettre ou un digit :%c\n", testIs);
    if (value4)
      printf("%d it s really ascii\n", (int)testIs);
    printf("%c   %c  \n", (char)ft_tolower(testIs), (char)ft_toupper(testIs));

    testIs++;

  }

  testIs = -128;
  while (testIs < 127)
  {
    int value5 = ft_isprint(testIs);
    if (value5)
      printf("printable :%c:\n", testIs);
    testIs++;
  }


  char test4[10] = "salut";
  test4[5] = '\0';

  ft_memcpy(&test2[1], test4, 5);
  memcpy(&test2copy[1], test4, 5);
  printf(" Mon test  = %s , MOn test2 %s \n", test2, test2copy);

  printf("%d <---mon strlen   le vrai --> %d\n", (int)ft_strlen(test2), (int)strlen(test2));
  puts(test4);
  ft_puts(test4);
  ft_puts(NULL);

  char *grz= ft_strdup("DAT MAN IS crzy");
  char *datguys2 = strdup("DAT MAN IS crzy");
  printf(" %s \n %s \n", grz, datguys2);

  ft_memset(test2, 'X',8);
  printf(" Mon test  = %s , MOn test2 %s \n", test2, test2copy);


  int fd =open("filetoread", O_RDONLY);
   int fd2 =open(argv[0], O_RDONLY);
  ft_cat(fd);
  ft_cat(fd2);
  ft_cat(-42);


  return (0);
}
