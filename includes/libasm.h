
#ifndef LIBASM_H
# define LIBASM_H

#include <string.h>

void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *dest, const char *src);
int		ft_isalnum(int c);
int		ft_isalpha(int c);
int		ft_isascii(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
void	ft_puts(char const *s);
void	ft_cat(int);

size_t	ft_strlen(const char *str);
void	*ft_memset(void *ptr, int value, size_t num);
void	*ft_memcpy(void *dest, const void *src, size_t n);
char	*ft_strdup(const char *str);

#endif