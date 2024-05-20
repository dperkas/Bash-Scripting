#Bash script that auto runs the gcc compiler with a file.c file.
#It simply runs "gcc file.c -o file"
#
#To run it, you have to make it executable with the command:
#  chmod +x comp.sh
#
#Then you just run "./comp file.c" and generates "file" file.
#
#
#!/bin/bash

# Check if an argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 filename.c"
    exit 1
fi

# Read the source file
SOURCE_FILE=$1

# Check if the file has a .c extension
if [[ $SOURCE_FILE != *.c ]]; then
    echo "Error: The file must have a .c extension"
    exit 1
fi

# Remove the .c extension to create the executable file name
OUTPUT_FILE=${SOURCE_FILE%.c}

# Compile the source file
gcc $SOURCE_FILE -o $OUTPUT_FILE

# Check if the compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful: ${OUTPUT_FILE}"
else
    echo "Compilation failed"
    exit 1
fi
