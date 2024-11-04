#!/bin/bash

# Function to create directory if it doesn't exist
create_dir() {
    if [ ! -d "$1" ]; then
        mkdir -p "$1"
        echo "Created directory: $1"
    else
        echo "Directory already exists: $1"
    fi
}

# Function to create file with content
create_file() {
    if [ ! -f "$1" ]; then
        echo "$2" > "$1"
        echo "Created file: $1"
    else
        echo "File already exists: $1"
    fi
}

# Ask for the project name
read -p "Enter the project name: " project_name

# Create project directory
create_dir "$project_name"

# Create project structure
project_dir="$project_name"
create_dir "$project_dir/build"
create_dir "$project_dir/src"
create_dir "$project_dir/inc"

# Create main.cpp
main_cpp_content="#include \"../inc/main.hpp\"

int main() {
    std::cout << \"Hello, World!\" << std::endl;
    return 0;
}"

create_file "$project_dir/src/main.cpp" "$main_cpp_content"

# Create main.hpp
main_hpp_content="#pragma once
#include <iostream>"

create_file "$project_dir/inc/main.hpp" "$main_hpp_content"

# Create Makefile
makefile_content="CXX = g++
CXXFLAGS = -std=c++14 -Wall -I../inc
SRCDIR = ../src
BUILDDIR = .
TARGET = main

SOURCES = \$(wildcard \$(SRCDIR)/*.cpp)
OBJECTS = \$(patsubst \$(SRCDIR)/%.cpp,\$(BUILDDIR)/%.o,\$(SOURCES))

\$(TARGET): \$(OBJECTS)
	\$(CXX) \$(OBJECTS) -o \$(TARGET)

\$(BUILDDIR)/%.o: \$(SRCDIR)/%.cpp
	\$(CXX) \$(CXXFLAGS) -c \$< -o \$@

.PHONY: clean

clean:
	rm -f \$(BUILDDIR)/*.o \$(TARGET)"

create_file "$project_dir/build/Makefile" "$makefile_content"

echo "C++ project structure created successfully in $project_name directory!"

cd $project_dir/build
make