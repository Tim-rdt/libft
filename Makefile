# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: troudot <troudot@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/03 03:09:47 by troudot           #+#    #+#              #
#    Updated: 2022/11/17 09:39:51 by troudot          ###   ########.fr        #
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


OBJS		= ${SRCS:.c=.o}
OBJS_BONUS	= ${SRCS_BONUS:.c=.o}
NAME		= libft.a

.c.o:
	gcc -Wall -Wextra -Werror -c $< -o ${<:.c=.o} -I includes

${NAME}: ${OBJS}
	ar rc ${NAME} ${OBJS}
	ranlib ${NAME}

bonus:	$(OBJS_BONUS)
	ar rcs $(NAME) $(OBJS_BONUS)
	ranlib ${NAME}

all: ${NAME}

clean:
	rm -f ${OBJS}

fclean:
	rm -f ${NAME} ${OBJS_BONUS} ${OBJS}

re: fclean all