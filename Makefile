CXX = clang++
CXXFLAGS = -std=c++23 -Wall -Wextra -fsanitize=address,undefined -g
BUILD_DIR = build/cpp
.SECONDARY:

$(BUILD_DIR)/%: %.cpp
	mkdir -p $(BUILD_DIR)
	$(CXX) $(CXXFLAGS) $< -o $@

run-%: $(BUILD_DIR)/%
	./$<

.PHONY: clean
clean:
	rm -rf $(BUILD_DIR)