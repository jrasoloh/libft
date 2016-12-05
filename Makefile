#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jrasoloh <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/18 16:32:19 by jrasoloh          #+#    #+#              #
#    Updated: 2016/11/30 23:39:08 by jrasoloh         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME		=	libft.a
SRC			=	./ft_strlen.c \
				./ft_strcmp.c \
				./ft_isalpha.c \
				./ft_isalnum.c \
				./ft_isprint.c \
				./ft_toupper.c \
				./ft_tolower.c \
				./ft_strstr.c \
				./ft_isdigit.c \
				./ft_strnstr.c \
				./ft_strchr.c \
				./ft_isascii.c \
				./ft_memset.c \
				./ft_bzero.c \
				./ft_memcpy.c \
				./ft_memccpy.c \
				./ft_memchr.c \
				./ft_memcmp.c \
				./ft_strdup.c \
				./ft_memmove.c \
				./ft_strcpy.c \
				./ft_strncpy.c \
				./ft_strcat.c \
				./ft_strncat.c \
				./ft_strlcat.c \
				./ft_strncmp.c \
				./ft_atoi.c \
				./ft_strrchr.c \
				./ft_memalloc.c \
				./ft_memdel.c \
				./ft_strnew.c \
				./ft_strdel.c \
				./ft_strclr.c \
				./ft_striter.c \
				./ft_striteri.c \
				./ft_strmap.c \
				./ft_strmapi.c \
				./ft_strequ.c \
				./ft_strnequ.c \
				./ft_strsub.c \
				./ft_strjoin.c \
				./ft_strtrim.c \
				./ft_strsplit.c \
				./ft_itoa.c \
				./ft_putchar.c \
				./ft_putstr.c \
				./ft_putendl.c \
				./ft_putnbr.c \
				./ft_putchar_fd.c \
				./ft_putstr_fd.c \
				./ft_putendl_fd.c \
				./ft_putnbr_fd.c \
				./ft_lstnew.c \
				./ft_lstdelone.c \
				./ft_lstdel.c \
				./ft_lstadd.c \
				./ft_lstiter.c \
				./ft_lstmap.c

CFLAGS		=	-Wall -Werror -Wextra

OBJ_NAME	= $(SRC:.c=.o)

all		:		$(NAME)

$(NAME)	:
		gcc -c $(SRC)
		ar rc $(NAME) $(OBJ_NAME)
		ranlib $(NAME)

clean	:
		rm -f $(OBJ_NAME)

fclean	:		clean
		rm -f $(NAME)

re		:		fclean all

.PHONY	:		all fclean clean re
