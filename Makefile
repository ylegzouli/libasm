.PHONY: all clean fclean re norme

CC = nasm

NAME = libasm.a

SRC_PATH = ./src
LIB_PATH = ./bonus
INC_PATH = ./inc
OBJ_PATH = ./obj
OBJLIB_PATH = ./obj

INC_NAME =	libasm.h
SRC_NAME =	ft_strlen.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_read.s ft_write.s
LIB_NAME =	ft_list_size.s

OBJ_NAME = $(SRC_NAME:.s=.o)
OBJLIB_NAME = $(LIB_NAME:.s=.o)

SRC = $(addprefix $(SRC_PATH)/, $(SRC_NAME))
LIB = $(addprefix $(LIB_PATH)/, $(LIB_NAME))
INC = $(addprefix $(INC_PATH)/, $(INC_NAME))
OBJ = $(addprefix $(OBJ_PATH)/,$(OBJ_NAME))
OBJLIB = $(addprefix $(OBJLIB_PATH)/,$(OBJLIB_NAME))

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)

bonus: $(OBJ) $(OBJLIB)
	ar rc $(NAME) $(OBJ) $(OBJLIB)

$(OBJ_PATH)/%.o: $(SRC_PATH)/%.s
	@mkdir $(OBJ_PATH) 2> /dev/null || true
	$(CC) -o $@ -f macho64 $<

$(OBJLIB_PATH)/%.o: $(LIB_PATH)/%.s
	@mkdir $(OBJLIB_PATH) 2> /dev/null || true
	$(CC) -o $@ -c $<

main: $(NAME)
	gcc -c src/main.c
	mv main.o obj
	gcc -o tester obj/main.o libasm.a

#mainbonus: bonus
#	gcc -c src/main_bonus.c
#	mv main_bonus.o obj
#	gcc -o tester_bonus obj/main_bonus.o $(OBJ) 

clean:
	rm -rf $(OBJ) $(OBJLIB) obj/main.o

fclean: clean
	rm -rf ./obj $(NAME) obj/main.o
#	rm tester 
#	rm $(NAME)

re: fclean all

norme:
	@norminette $(SRC) $(LIB) $(INC)
