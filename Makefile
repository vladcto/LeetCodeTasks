.SECONDARY:

CXX = clang++
CXXFLAGS = -std=c++23 -Wall -Wextra -fsanitize=address,undefined -g
BUILD_DIR_CPP = build/cpp

C = clang
CFLAGS = -std=c23 -Wall -Wextra -fsanitize=address,undefined -g
BUILD_DIR_C = build/c

$(BUILD_DIR_CPP)/%: %.cpp
	mkdir -p $(BUILD_DIR_CPP)
	$(CXX) $(CXXFLAGS) $< -o $@

$(BUILD_DIR_C)/%: %.c
	mkdir -p $(BUILD_DIR_C)
	$(C) $(CFLAGS) $< -o $@

run-%: $(BUILD_DIR_CPP)/%
	./$<

crun-%: $(BUILD_DIR_C)/%
	./$<

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR_CPP)
	rm -rf $(BUILD_DIR_C)