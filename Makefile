NAME = libfts.a

SRC =	ft_bzero.s \
		ft_cat.s \
		ft_isalnum.s \
		ft_isalpha.s \
		ft_isascii.s \
		ft_isdigit.s \
		ft_isprint.s \
		ft_memcpy.s \
		ft_memset.s \
		ft_puts.s \
		ft_strcat.s \
		ft_strdup.s \
		ft_strlen.s \
		ft_tolower.s \
		ft_toupper.s

ASM =	~/.brew/bin/nasm -f macho64 -I includes

OBJ =	$(SRC:.s=.o)

RM =	rm -rf

CC = gcc -I includes

all:		$(NAME)

$(NAME):	includes/libasm.h $(OBJ)
	@ar rc $(NAME) $(OBJ)

main:	$(NAME)
	@$(CC) $(NAME) main.c

test:	$(NAME)
	@$(CC) $(NAME) test.c

%.o: %.s
	@$(ASM) $< -o $@

clean:
	@$(RM) $(OBJ)

fclean:		clean
	@$(RM) $(NAME)

re:			fclean all

.phony:main all %.o clean fclean re $(NAME) 

