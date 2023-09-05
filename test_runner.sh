#!/bin/bash

input_directory="testcases/"
output_file="modifications.txt"

# Check if the input directory exists
if [ ! -d "$input_directory" ]; then
    echo "Input directory does not exist."
    exit 1
fi

# Loop through each file in the input directory
for input_file in "$input_directory"/*; do
    if [ -f "$input_file" ]; then
        # Append the content of the input file to the output file
        cat "$input_file" | ./corbec++ | grep Modifications >> "$output_file";
        echo "" >> "$output_file" # Add a newline separator between file contents
        echo "Appended $input_file to $output_file"
    fi
done

echo "Processing complete."
