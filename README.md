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
