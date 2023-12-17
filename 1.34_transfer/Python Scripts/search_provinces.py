#Search for instances of provinces in files

import os
import re

# Input paths
root_directory = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer"#..\..\Program Files (x86)\Steam\steamapps\common\Europa Universalis IV"
illegal_numbers_file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt"
output_log_file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\log.txt"

# Read illegal numbers from the file
with open(illegal_numbers_file_path, "r") as illegal_numbers_file:
    illegal_numbers_line = illegal_numbers_file.readline().strip()
    illegal_numbers = illegal_numbers_line.split()

# Create a regex pattern for illegal numbers
illegal_numbers_pattern = r'\b(?:' + '|'.join(re.escape(number) for number in illegal_numbers) + r')\b'

# Lines the script should look for
lines_to_look_for = [
    r"capital\s*=\s*",
    r"province\s*=\s*",
    r"owns\s*=\s*",
    r"controls\s*=\s*",
    r"of\s*=\s*",
    r"who\s*=\s*",
    r"province_id\s*=\s*",
    r"has_discovered\s*=\s*",
    r"claim\s*=\s*",
    r"location\s*=\s*",
    r"start\s*=\s*",
    fr"{illegal_numbers_pattern}\s*=\s*",  # Use \s* to match optional spaces
]

file_extensions_to_check = [
    # List of file extensions to check (e.g., ".txt", ".csv", etc.)
    ".txt", ".csv", ".map"
]

# Exclusion lists for files and folders
excluded_files = ["Tutorial.txt", "achievements.txt","positions.txt"]
excluded_folders = ["history", "tutorial", "colonial_regions","mercenary_companies","tiles","Python Scripts"]

def match_line(line_to_look_for, line_content):
    pattern = re.compile(line_to_look_for, re.IGNORECASE)  # Ignore case for flexibility
    return pattern.search(line_content)


# Open and write to the output log file
with open(output_log_file_path, "w", encoding="utf-8") as output_log_file:
    for folder_name, subfolders, filenames in os.walk(root_directory):
        # Exclude specific folders
        subfolders[:] = [folder for folder in subfolders if folder not in excluded_folders]
        
        for filename in filenames:
            if filename in excluded_files:
                continue
            
            if any(filename.endswith(extension) for extension in file_extensions_to_check):
                file_path = os.path.join(folder_name, filename)
                with open(file_path, "r", encoding="utf-8", errors="ignore") as input_file:
                    for line_number, line_content in enumerate(input_file, start=1):
                        for line_to_look_for in lines_to_look_for:
                            if match_line(line_to_look_for, line_content) and re.search(illegal_numbers_pattern, line_content):
                                output_log_file.write(f"File Name: {file_path}\n")
                                output_log_file.write(f"Line Content: {line_content}\n")
                                output_log_file.write(f"Line Number: {line_number}\n")
                                output_log_file.write("\n")
                                break


