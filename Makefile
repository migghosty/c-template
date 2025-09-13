# compiler + flags
CC = gcc
CFLAGS = -Wall -Wextra
# MMD generates .d file with header dependencies
# MP adds dummy rules to prevent errors if headers are deleted
DEPFLAGS = -MMD -MP

# include directories
CINCLUDE = -Iinc/

# directories
SRC_DIR = src
OBJ_DIR = build

# source + object files
SRCS = main.c $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst %.c,$(OBJ_DIR)/%.o,$(notdir $(SRCS)))
DEPS = $(OBJS:.o=.d)

# output binary
OUT = $(OBJ_DIR)/a.out

# default target
all: $(OUT)

# link object files into final binary
$(OUT): $(OBJS)
	$(CC) $(CFLAGS) $(CINCLUDE) -o $@ $^

# compile all .c files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(CC) $(CFLAGS) $(CINCLUDE) $(DEPFLAGS) -c $< -o $@

# include dependency files if they exist
-include $(DEPS)

# clean build
clean:
	rm -rf $(OBJ_DIR)/* $(OUT)
