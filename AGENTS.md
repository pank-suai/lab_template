# Agent Guidelines for Lab Template

## Build Commands
- `make` or `make all`: Build executable and documentation
- `make run`: Build and run the application
- `make docs`: Build Typst documentation to PDF
- `make clean`: Remove build artifacts

## Test Commands
- No formal test framework configured
- For unit testing: Create test files in `src/` and compile with `g++ -std=c++23`
- Run individual tests: `g++ -std=c++23 src/test_file.cpp -o build/test && ./build/test`

## Code Style Guidelines
- **Language**: C++23 standard
- **Compiler**: g++ with `-Wall -Wextra -g` flags
- **Imports**: Use standard library headers (`<iostream>`, etc.)
- **Naming**: Standard C++ conventions (snake_case for variables/functions, PascalCase for types)
- **Formatting**: 2-space indentation, minimal spacing
- **Error Handling**: Basic exception handling where needed, validate inputs
- **Documentation**: Use Typst for reports, embed code with `#raw(read("../src/main.cpp"), lang: "cpp")`

## Academic Requirements
- Implement assigned variant from methodology document
- Generate control examples covering all execution paths
- Handle edge cases (overflow, empty structures)
- Create comprehensive Typst report with figures and captions
- Save screenshots in `images/` directory with sequential numbering