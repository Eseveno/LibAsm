#include "libasm.h"
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>
#include <unistd.h>

int	main()
{
	char *str = NULL;
	
	// ft_isdigit 
	printf("ft_isdigit %d\n", ft_isdigit('0'));
	printf("   isdigit %d\n\n", isdigit('0'));
	
	// ft_isalpha 
	printf("ft_isalpha %d\n", ft_isalpha(0));
	printf("   isalpha %d\n\n", isalpha(0));
	
	// ft_bzero 
	str = strdup("bonjour");
	printf("ft_bzero %s", str);
	ft_bzero(str, 8);
	printf("%s\n", str);
	str = strdup("bonjour");
	printf("   bzero %s", str);
	bzero(str, 8);
	printf("%s\n\n", str);

	// ft_isascii 
	printf("ft_isascii %d\n", ft_isascii(127));
	printf("   isascii %d\n\n", isascii(127));
 	
 	// ft_isalnum 
	printf("ft_isalnum %d\n", ft_isalnum('c'));
	printf("   isalnum %d\n\n", isalnum('c'));

	// ft_isprint 
	printf("ft_isprint %d\n", ft_isprint('c'));
	printf("   isprint %d\n\n", isprint('c'));

	// ft_toupper 
	printf("ft_toupper %c\n", ft_toupper('a'));
	printf("   toupper %c\n\n", toupper('a'));

	// ft_tolower 
	printf("ft_tolower %c\n", ft_tolower('A'));
	printf("   tolower %c\n\n", tolower('A'));

	// ft_strlen 
	printf("ft_strlen %d\n", (int)ft_strlen("bonjour"));
	printf("   strlen %d\n\n", (int)strlen("bonjour"));

	// ft_puts 
	ft_puts("ft_puts bonjour");
	puts("   puts bonjour\n");

	char s1[30] = "bonjour";
	char s3[30] = "bonjour";
	char s2[15] = "jour";
	char s4[15] = "jour";

	// ft_strcat
	printf("ft_strcat %s\n", ft_strcat(s1, s2));
	printf("   strcat %s\n\n", strcat(s3, s2));

	// ft_memset
	printf("ft_memset %s\n", ft_memset(s2, 'A', 2));
	printf("   memset %s\n\n", memset(s4, 'A', 2));

	// ft_memcpy
	printf("ft_memcpy %s\n", ft_memcpy(s2, "bon", 2));
	printf("   memcpy %s\n\n", memcpy(s4, "bon", 2));

	// ft_strdup
	printf("ft_strdup %s (%p -> %p)\n",ft_strdup(s2), s2, ft_strdup(s2));
	printf("   strdup %s (%p -> %p)\n\n",ft_strdup(s2), s4, strdup(s4));

	ft_cat(0);
	return (0);
}












