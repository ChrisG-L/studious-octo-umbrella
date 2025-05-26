SRC =	main.cpp \

NAME = factoriaM

OBJDIR = build
OBJ = $(SRC:%.cpp=$(OBJDIR)/%.o)

INC =	
LIB =	

CXX = g++
CXXFLAGS = -Wall -Wextra -g3

CXXFLAGS += $(INC:%=-I %)
CXXFLAGS += $(LIB:%=-%)

all: $(NAME)

$(NAME): $(OBJ)
	$(CXX) -o $(NAME) $(OBJ) $(CXXFLAGS)

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
