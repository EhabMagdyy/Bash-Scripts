## Bash Scripts

### Class Creator Script

Automate the creation of C++ class files. The script prompts the user for essential information and generates the corresponding `.hpp` and `.cpp` files. The generated files include a namespace, class structure, and boilerplate copyright headers.

#### Features:
- Prompts for user inputs like name, class name, and namespace.
- Generates a folder for the class.
- Creates a `.hpp` header file with the provided details.
- Optionally generates a `.cpp` implementation file.
- Includes customizable boilerplate headers.

#### Example Execution
1. Run the script:
   ```bash
   bash CppClassGenerator.sh
   ```
2. Follow the prompts:
   - Enter your name: `Ehab Magdy`
   - Enter your class name: `ExampleClass`
   - Enter your namespace: `ExampleNamespace`
3. Choose whether to generate the `.cpp` file.

#### Output
- A folder named `ExampleClass`.
- Inside the folder:
  - `ExampleClass.hpp` with the class declaration.
  - (Optional) `ExampleClass.cpp` with the class implementation.

---

### CppProjectMKFile.sh

generates a basic C++ project structure, including directories and starter files. The structure is designed to streamline development with clear organization and a ready-to-use `Makefile`.

#### Features

- Creates a project directory with the given name.
- Generates subdirectories for `src` (source code), `inc` (header files), and `build` (compiled files).
- Provides a starter `main.cpp` and `main.hpp` file with basic content.
- Includes a `Makefile` for compiling the project.

#### Output Project Structure

```
<project_name>/
├── build/
│   └── Makefile
├── inc/
│   └── main.hpp
└── src/
    └── main.cpp
```

## Dependencies

- `bash` shell
- GNU `make`
- `g++` (GNU C++ compiler)