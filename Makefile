# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shan <shan@student.42seoul.kr>             +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/18 18:34:49 by shan              #+#    #+#              #
#    Updated: 2021/12/06 21:38:07 by shan             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=	libft.a

CC			=	gcc
CFLAG		=	-Wall -Westra -Werror

RM			=	rm -f

AR			=	ar
ARFLAGS		=	crs

INCLUDES	=	./libft.h

SRCS		=	ft_isalpha.c\
				ft_isdigit.c\
				ft_isalnum.c\
				ft_isascii.c\
				ft_isprint.c\
				ft_strlen.c\
				ft_memset.c\
				ft_bzero.c\
				ft_memcpy.c\
				ft_memmove.c\
				ft_strlcpy.c\
				ft_strlcat.c\
				ft_toupper.c\
				ft_tolower.c\
				ft_strchr.c\
				ft_strrchr.c\
				ft_strncmp.c\
				ft_memchr.c\
				ft_memcmp.c\
				ft_strnstr.c\
				ft_atoi.c\
				ft_calloc.c\
				ft_strdup.c\
				ft_substr.c\
				ft_strjoin.c\
				ft_strtrim.c\
				ft_split.c\
				ft_itoa.c\
				ft_strncmp.c\
				ft_striteri.c\
				ft_putchar_fd.c\
				ft_putstr_fd.c\
				ft_putendl_fd.c\
				ft_putnbr_fd.c

SRC_BONUS	=	ft_lstadd_back.c\
				ft_lstadd_front.c\
				ft_lstclear.c\
				ft_lstdelone.c\
				ft_lstiter.c\
				ft_lstast.c\
				ft_lastmap.c\
				ft_lstnew.c\
				ft_lstsize.c

OBJS		=	$(SRCS:.c=.o)
OBJS_BONUS	=	$(SRCS_BONUS:.c=.o)

all			:	$(NAME)

%.o			:	%.c
				$(CC) $(CFLAG) -c $< -o $@

clean		:
				$(RM) $(OBJS) $(OBJS_BONUS)

fclean		:	clean
				$(RM) $(NAME)
re			:	fclean all

bonus		:	
