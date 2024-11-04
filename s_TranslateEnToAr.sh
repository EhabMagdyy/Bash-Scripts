#!/bin/bash

# Translate Word

word=$(xclip -o)

url="https://translate.google.com/?sl=en&tl=ar&text=${word}"

firefox $url