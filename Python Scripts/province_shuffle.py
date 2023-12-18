import re

# Define the absolute path to your file
file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\terrain_script.txt"  # Replace with your actual file path

with open(file_path, "r") as file:
    # Read the lines from the file and store them in the 'lines' list
    lines = file.readlines()

    # Strip newline characters from each line
    lines = [line.strip() for line in lines]

    # Initialize an empty list to store the modified lines
    modified_lines = []

    # Define a regular expression pattern to match "prov" followed by numbers
    pattern = r'^(.*?);(.*?);(.*?);(.*?);(prov\d*?);(.*?)$'

    # Iterate through the input lines
    for line in lines:
        # Use regular expression to match and capture the parts of the line
        match = re.match(pattern, line)
        
        if match:
            # Extract the captured parts
            first_number = int(match.group(1)) - 863
            fifth_part = f"prov{first_number}"
            modified_line = f"{first_number};{match.group(2)};{match.group(3)};{match.group(4)};{fifth_part};{match.group(6)}"
            modified_lines.append(modified_line)
        else:
            # If no match is found, subtract 863 from the first section
            parts = line.strip().split(";")
            if len(parts) >= 1:
                first_number = int(parts[0]) - 863
                parts[0] = str(first_number)
                modified_line = ';'.join(parts)
                modified_lines.append(modified_line)

    # Print the modified lines
    for modified_line in modified_lines:
        print(modified_line)