import re

# Specify the absolute file path to your data file
file_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\terrain_script.txt"

# Read the data from the file, including comments within curly braces
with open(file_path, 'r') as file:
    data = file.read()

# Use regular expressions to find the expressions and extract numbers
expressions = re.findall(r'{(.*?)}', data, re.DOTALL)

# Extract and split numbers from each expression and flatten the list
all_numbers = []
for expression in expressions:
    # Remove comments within the expression using a corrected regular expression
    expression = re.sub(r'#\s*\d+', '', expression)
    numbers = expression.split()
    for num in numbers:
        if num.isdigit():
            all_numbers.append(int(num))

# Sort the list of numbers
all_numbers.sort()

# Convert the sorted numbers back to a string
result = ' '.join(map(str, all_numbers))

print(result)