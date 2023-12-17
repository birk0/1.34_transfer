#Script to clear the contents of province history files


import os

def clear_file_contents(file_path):
    lines_to_keep = []
    file_name = os.path.basename(file_path)
    comments_array = ["base_tax = 1", "base_production = 1", "base_manpower = 1"]

    with open(file_path, "r") as file:
        for line in file:
            lines_to_keep.append(line)
    
    for i in comments_array:
        lines_to_keep.append("\n"+i)

    with open(file_path, "w") as file:
        for line in lines_to_keep:
            file.write(line)

def clear_folder_contents(folder_path):
    for filename in os.listdir(folder_path):
        file_path = os.path.join(folder_path, filename)
        if os.path.isfile(file_path):
            clear_file_contents(file_path)

if __name__ == "__main__":
    folder_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\provinces"
    clear_folder_contents(folder_path)
    print(f"Contents of files in {folder_path} modified.")










#import os
#
#def main():
    #input_numbers_file = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt"  # Replace with the actual absolute path
    #history_folder = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\provinces"  # Replace with the actual absolute path
#
#    with open(input_numbers_file, "r") as input_file:
#        numbers_list = input_file.read().split()
#
#    for number in numbers_list:
#        number = number.strip()
#        possible_prefixes = [f"{number} - ", f"{number}-", f"{number} -", f"{number} "]
#
#        for file_name in os.listdir(history_folder):
#            for prefix in possible_prefixes:
#                if file_name.startswith(prefix):
#                    file_path = os.path.join(history_folder, file_name)
#                    with open(file_path, "w") as history_file:
#                        history_file.write("#removed\n")
#                    print(f"Modified contents of: {file_path}")
#                    break  # Break loop once the file is found and modified
#
#if __name__ == "__main__":
#    main()