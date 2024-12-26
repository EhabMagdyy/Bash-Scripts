## Bash Scripts

### Table of Contents

- [1.CppClassGenerator (Create CPP Class)](#1cppclassgenerator-create-cpp-class)
- [2.CppProjectMKFile (CPP Project with Make)](#2cppprojectmkfile-cpp-project-with-make)
- [3.InternetSpeedTest](#3internetspeedtest)
- [4.SystemReport](#4systemreport)
- [5.AliasGenerator](#5aliasgenerator)


### 1.CppClassGenerator (Create CPP Class)

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

### 2.CppProjectMKFile (CPP Project with Make)

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

#### Dependencies

- GNU `make`
- `g++` (GNU C++ compiler)

---

### 3.InternetSpeedTest

This script automates the process of checking your internet speed using the `speedtest-cli` tool. It ensures that `speedtest-cli` is installed on your system and runs a speed test to display the current internet speed.

---

### 4.SystemReport

This Bash script provides comprehensive details about your system's hardware and software configurations. It displays information such as hostname, kernel version, CPU details, memory usage, disk space, network settings, and GPU details. The script uses various system commands to fetch and format this data.

#### Features

- **System Information**:
  - Hostname
  - Kernel version
  - Operating system
  - Distribution (if `lsb_release` is installed)
  - CPU architecture

- **CPU Information**:
  - Model name
  - Number of cores
  - Number of threads

- **Memory Information**:
  - Total memory
  - Used memory
  - Free memory

- **Disk Space Information**:
  - Filesystem details including size, used, available, and usage percentage

- **Network Information**:
  - IP address
  - Default gateway
  - DNS servers

- **GPU Information**:
  - GPU details if `lspci` is available

---

### 5.AliasGenerator

This Bash script simplifies the process of creating an alias for a command by automatically adding it to your `.bashrc` file. Aliases provide shortcuts for commonly used commands, enhancing productivity in the terminal.

#### Example

##### Input
```bash
Enter the command: ls -l
Enter the alias: ll
```

##### Result in `.bashrc`
```bash
# alias for ls -l -> ll
alias ll='ls -l'
```

#### Notes

- The alias becomes active only in new Bash sessions. To use it immediately, open a new terminal or run `source ~/.bashrc`.
- If `.bashrc` does not exist, the script will create an empty `.bashrc` file before adding the alias.
- Be cautious of overwriting existing aliases with the same name; ensure unique alias names.
