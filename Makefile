# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/20 20:16:42 by marvin            #+#    #+#              #
#    Updated: 2024/10/20 20:16:42 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

CC = cc -c
CFLAGS = -Wall -Werror -Wextra
AR = ar rcs

SRC = ft_printf.c\
		ft_printf_handle.c\
		ft_put.c\
		ft_pointer.c\

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
		$(CC) $(SRC) $(CFLAGS)
		$(AR) $(NAME) -o $^

clean:
		rm -f $(OBJ)
	
fclean: clean
		rm -f $(NAME) $(OBJ)
	
re: fclean all
 .PHONY: all clean fclean re
