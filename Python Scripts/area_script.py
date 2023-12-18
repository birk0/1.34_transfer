#Script to remove provinces from the area.txt file.
#May be adjusted to be used in other files, for now it is used for that purpose only.



def main():
    # Specify the absolute paths to the input numbers file and area file
    input_numbers_file = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt" # provinces to remove list
    area_file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\terrain_script.txt" # file to edit

    # Read the list of illegal numbers from the input file
    with open(input_numbers_file, "r") as input_file:
        illegal_numbers = set(map(int, input_file.read().split()))

    # Read the contents of the "area.txt" file
    with open(area_file_path, "r") as area_file:
        area_text = area_file.read()

    # Process the area text
    modified_area_text = process_area_text(area_text, illegal_numbers)

    # Write the modified area text back to the "area.txt" file
    with open(area_file_path, "w") as area_file:
        area_file.write(modified_area_text)

def process_area_text(area_text, illegal_numbers):
    lines = area_text.split("\n")
    modified_lines = []
    current_area = None
    is_inside_area = False

    for line in lines:
        stripped_line = line.strip()

        if "{" in stripped_line:
            is_inside_area = True
            current_area = stripped_line.split()[0]
            modified_lines.append(line)  # Add opening brace
        elif "}" in stripped_line and current_area:
            is_inside_area = False
            modified_lines.append(line)  # Add closing brace
            current_area = None
        elif is_inside_area and stripped_line and stripped_line[0].isdigit():
            area_numbers = [num for num in stripped_line.split() if num.isdigit()]
            updated_numbers = [num for num in area_numbers if int(num) not in illegal_numbers]

            if updated_numbers:
                updated_numbers_str = " ".join(updated_numbers)
                modified_lines.append("\t" + updated_numbers_str)  # Add numbers with a single tab
        else:
            modified_lines.append(line)  # Keep existing comments or other lines

    return "\n".join(modified_lines)

if __name__ == "__main__":
    main()

# Additional script to list empty areas, so they can be removed from the regions file:


#def check_empty_areas(area_text):
#    lines = area_text.split("\n")
#    empty_areas = []
#    current_area = None
#    area_has_numbers = False

#    for line in lines:
#        stripped_line = line.strip()

#        if "{" in stripped_line:
#            if "=" in stripped_line:
#                current_area = stripped_line.split("=")[0].strip()
#            area_has_numbers = False
#        elif "}" in stripped_line and current_area:
#            if not area_has_numbers and not stripped_line.startswith("#"):
#                empty_areas.append(current_area)
#            current_area = None
#        elif current_area and stripped_line:
#            if stripped_line[0].isdigit():
#                area_has_numbers = True

#    return empty_areas

#if __name__ == "__main__":
#    area_file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\terrain_script.txt"
    
#    with open(area_file_path, "r") as area_file:
#        area_text = area_file.read()

#    empty_areas = check_empty_areas(area_text)

#    if empty_areas:
#        print("Empty Areas:")
#        for area_name in empty_areas:
#            print(area_name)
#    else:
#        print("No empty areas found.")
