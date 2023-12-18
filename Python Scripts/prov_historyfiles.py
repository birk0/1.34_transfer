import os

def create_text_files_with_comments(start, end, folder_path):
    # Ensure the folder path exists
    if not os.path.exists(folder_path):
        os.makedirs(folder_path)

    # Loop through the range and create text files
    for num in range(start, end + 1):
        # Create the filename
        filename = f"{num} - Prov{num}.txt"
        file_path = os.path.join(folder_path, filename)

        # Create and write to the text file
        with open(file_path, 'w') as file:
            file.write(f"#{num} - Prov{num}\n")

        print(f"Created {file_path}")

# Define the range of numbers and the folder path
start = 3004
end = 3156
folder_path = r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\provinces"

# Call the function to create text files
create_text_files_with_comments(start, end, folder_path)