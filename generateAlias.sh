#!/bin/bash

# Function to check if .bashrc exists
ensure_bashrc_exists() {
    if [ ! -f "$HOME/.bashrc" ]; then
        echo "Creating .bashrc file in your home directory..."
        touch "$HOME/.bashrc"
    fi
}

# Prompt the user for the alias name and command
read -p "Enter the command: " command
read -p "Enter the alias: " alias_name

# Ensure .bashrc exists
ensure_bashrc_exists

# Add the alias to .bashrc
echo "# alias for $command -> $alias_name" >> "$HOME/.bashrc"
echo "alias $alias_name='$command'" >> "$HOME/.bashrc"

# Inform the user and reload .bashrc
echo "Alias '$alias_name' for command '$command' added to .bashrc."
source "$HOME/.bashrc"
echo "Your new alias is now available in the new bash sessions"