## Bash Scripts

### Table of Contents

- [CppClassGenerator (Create CPP Class)](#cppclassgenerator-create-cpp-class)
- [CppProjectMKFile (CPP Project with Make)](#cppprojectmkfile-cpp-project-with-make)
- [InternetSpeedTest](#internetspeedtest)
- [SystemReport](#systemreport)


### CppClassGenerator (Create CPP Class)

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

### CppProjectMKFile (CPP Project with Make)

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

### InternetSpeedTest

This script automates the process of checking your internet speed using the `speedtest-cli` tool. It ensures that `speedtest-cli` is installed on your system and runs a speed test to display the current internet speed.

---

### SystemReport

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
