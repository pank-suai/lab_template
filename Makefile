TARGET = main
CXX = g++
CXXFLAGS = -std=c++23 -Wall -Wextra -g

SRC_DIR = src
BUILD_DIR = build
DOCS_DIR = docs

# Исходники C++
SOURCES = $(wildcard $(SRC_DIR)/*.cpp)
OBJECTS = $(patsubst $(SRC_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(SOURCES))
EXECUTABLE = $(BUILD_DIR)/$(TARGET)

DOC_SOURCE = $(DOCS_DIR)/index.typ
DOC_OUTPUT = $(BUILD_DIR)/index.pdf

.PHONY: all run docs clean

all: $(EXECUTABLE)  $(DOC_OUTPUT)

run: $(EXECUTABLE)
	@$(EXECUTABLE)

docs: $(DOC_OUTPUT)


$(EXECUTABLE): $(OBJECTS)
	@echo "🔗 Создание ссылок"
	@$(CXX) $(OBJECTS) -o $@

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
	@mkdir -p $(BUILD_DIR)
	@echo "🤖 Компиляция $<..."
	@$(CXX) $(CXXFLAGS) -c $< -o $@

$(DOC_OUTPUT): $(DOC_SOURCE)
	@mkdir -p $(BUILD_DIR)
	@echo "🗒️ Сборка документации"
	@typst compile --root .. $< $@


clean:
	@echo "🔥 Очистка проекта..."
	@rm -rf $(BUILD_DIR)
