import os
import re

country_tags_folder = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\history\countries"
illegal_provinces = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt"
log_file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\log.txt"

# Function to parse the province name from a given file name
def parse_province_name(file_name):
    return file_name.split("-")[1].strip()

# Open the illegal provinces file and read the prohibited province numbers
with open(illegal_provinces, "r") as illegal_file:
    illegal_province_numbers = illegal_file.read().split()

# Open the log file for writing
with open(log_file_path, "w") as log_file:
    # Iterate through files in the country tags folder
    for file_name in os.listdir(country_tags_folder):
        if file_name.endswith(".txt"):
            full_file_path = os.path.join(country_tags_folder, file_name)
            
            # Parse the province name from the file name
            province_name = parse_province_name(file_name)
            
            # Open the current file for reading
            with open(full_file_path, "r") as current_file:
                # Iterate through lines in the current file
                for line in current_file:
                    # Modify the line to use a regular expression pattern
                    match = re.search(r"capital\s*=\s*(\d+)", line)
                    if match:
                        capital_province_number = match.group(1)
                        
                        # Check if the capital province is in the list of illegal provinces
                        if capital_province_number in illegal_province_numbers:
                            # Write illegal province and file name to log
                            log_file.write(f"Illegal province: {capital_province_number}, File: {file_name}\n")


print("Processing complete. Check the log file for results.")
