##
## EPITECH PROJECT, 2025
## MANUS [WSL : Ubuntu]
## File description:
## Makefile
##

SRC_MAIN =	main.cpp
SRC =	factorial.cpp \

SRC_T = test1.cpp \

NAME = factorial

OBJDIR = build

OBJ_SRC = $(SRC_MAIN:%.cpp=$(OBJDIR)/%.o)
OBJ = $(SRC:%.cpp=$(OBJDIR)/%.o)

SRC_TPR = $(SRC_T:%.cpp=tests/%.cpp)
OBJ_T = $(SRC_TPR:%.cpp=$(OBJDIR)/%.o)

INC =
LIB =

CXX = g++
CXXFLAGS = -Wall -Wextra -g3

CXXFLAGS += $(INC:%=-I %)
CXXFLAGS += $(LIB:%=-%)

all: $(NAME)

$(NAME): $(OBJ_SRC) $(OBJ)
	$(CXX) -o $(NAME) $(OBJ_SRC) $(OBJ) $(CXXFLAGS)

tests_run: $(OBJ_T) $(OBJ)
	$(CXX) -o test $(OBJ_T) $(OBJ) $(CXXFLAGS)
	@echo "--------------------------------"
	@./test -fc=true

$(OBJDIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	$(CXX) -o $@ -c $< $(CXXFLAGS)

run: $(NAME)
	@echo "--------------------------------"
	@./$(NAME)


clean:
	rm -rf $(OBJDIR)

fclean: clean
	rm -rf $(NAME)

re: fclean all
