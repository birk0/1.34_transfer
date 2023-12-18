import re
# Define file paths
list_of_numbers_file = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt"
x_numbers_file = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\terrain_script.txt"  # Replace

# Function to read a list of numbers from a file
def read_number_list(file_path):
    with open(file_path, 'r') as file:
        numbers_str = file.readline().strip()
        numbers_list = numbers_str.split()
        return set(numbers_list)

# Function to check if any number from the list occurs in each line of the x;x;x;x numbers
def find_lines_without_numbers(number_list, x_file_path):
    with open(x_file_path, 'r') as file:
        line_number = 1  # Initialize line number
        
        for line in file:
            line = line.strip()
            
            found_number = False  # Flag to track if any number was found in the line
            
            for number in number_list:
                # Use regular expression to match numbers in the line
                pattern = fr'\b{number}\b'
                if re.search(pattern, line) is not None:
                    found_number = True  # Set the flag to True if a number is found
                    break
            
            # Print the line only if none of the numbers were found in it
            if not found_number:
                print(line)
            
            line_number += 1  # Increment line number

if __name__ == "__main__":
    # Read the list of numbers from the file
    number_list = read_number_list(list_of_numbers_file)
    
    #print("List of numbers from the file:")
    #print(number_list)
    
    # Find numbers from the list in the x;x;x;x numbers file
    find_lines_without_numbers(number_list, x_numbers_file)