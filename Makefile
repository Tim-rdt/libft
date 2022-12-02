# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: troudot <troudot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/03 03:09:47 by troudot           #+#    #+#              #
#    Updated: 2022/12/02 06:31:00 by troudot          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ FILES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

SRCS	=   ft_isalpha.c	ft_isdigit.c	ft_isalnum.c	ft_isascii.c	ft_isprint.c	\
			ft_bzero.c		ft_strlen.c 	ft_memset.c		ft_memcpy.c		ft_memmove.c	\
			ft_toupper.c	ft_tolower.c	ft_strlcpy.c	ft_strlcat.c	ft_strchr.c		\
			ft_strrchr.c	ft_strncmp.c	ft_memchr.c		ft_memcmp.c		ft_strnstr.c	\
			ft_atoi.c		ft_calloc.c		ft_strdup.c		ft_substr.c		ft_strjoin.c	\
			ft_strtrim.c	ft_putchar_fd.c	ft_putstr_fd.c	ft_putnbr_fd.c	ft_putendl_fd.c	\
			ft_itoa.c		ft_striteri.c	ft_strmapi.c	ft_split.c

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ BONUS FILES ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#
SRCS_BONUS = ft_lstnew.c	ft_lstadd_front.c	ft_lstsize.c	ft_lstlast.c	ft_lstiter.c\
			 ft_lstadd_back.c	ft_lstdelone.c	ft_lstclear.c	ft_lstmap.c

NAME		= libft.a
NAME_PRINT = LIBFT
PREFIX_NAME = \033[1m\033[38;5;240m[\033[0m\033[38;5;250m$(NAME_PRINT)\033[1m\033[38;5;240m] \033[38;5;105m~\033[0m

CC =	gcc $(FLAG)
FLAG =	 -Wall -Wextra -Werror

OBJS =	$(SRCS:%.c=%.o)
OBJS_BONUS	= ${SRCS_BONUS:.c=.o}

H	= first

all: 	$(NAME)

titre:
ifeq (${H} , first)
	@echo "\033[38;5;105m\n\n██╗     ██╗██████╗ ███████╗████████╗\033"
	@echo "\033[38;5;105m██║     ██║██╔══██╗██╔════╝╚══██╔══╝\033"
	@echo "\033[38;5;105m██║     ██║██████╔╝█████╗     ██║   \033"
	@echo "\033[38;5;105m██║     ██║██╔══██╗██╔══╝     ██║   \033"
	@echo "\033[38;5;105m███████╗██║██████╔╝██║        ██║   \033"
	@echo "\033[38;5;105m╚══════╝╚═╝╚═════╝ ╚═╝        ╚═╝   \n\n\033"
	@H=second
endif

$(OBJS): %.o: %.c
		@echo "$(PREFIX_NAME) Compiling \033[38;5;105m$<\033[m"
		@$(CC) $< -o $@ -c

$(NAME): titre $(SRCS) $(OBJS) bonus
		@ar rcs $(NAME) $(OBJS)
		@echo "\n$(PREFIX_NAME) \033[38;5;084mFinish !\033[m"

$(OBJS_BONUS): %.o: %.c
		@echo "$(PREFIX_NAME) Compiling \033[38;5;105m$<\033[m\033[38;5;166m [Bonus]\033"
		@$(CC) $< -o $@ -c

bonus: $(OBJS_BONUS)
		@ar rcs $(NAME) $(OBJS_BONUS)

clean: titre
		@rm -f $(OBJS) $(OBJS_BONUS)
		@echo "$(PREFIX_NAME)\033[38;5;084m Cleaning\n\033[m"

fclean:	clean
		@rm -f $(NAME) $(OBJS_BONUS)

re: fclean all

.PHONY: all clean fclean re