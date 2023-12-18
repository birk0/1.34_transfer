#This removes a list of provinces from a given list of provinces

#INSTRUCTIONS:
#   x represents the list you want to edit
#   y represents the list of provinces you want to remove
#   run the script and copy paste the output back into the original file
#   only supports number list based files, eg: 123 1079 4112 # Sweden, use csv_remove.py for editing csv files




x = open(r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\terrain_script.txt","r")

y = open(r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt","r")

climates = x.readlines()
continents = y.read()

continents = continents.replace("\n", " \n ")
continents = continents.replace("\t", " \t ")
continents = continents.split(" ")

sorted_string = ""

for provinces in climates:
    a = provinces.replace("\n"," \n ")
    b = a.replace("\t"," \t ")
    c = b.split(" ")
    p = c
    for value in continents:
        if value in c:
            p.remove(value)
            print("Removed Province:"+value)

    for j, n in enumerate(p):
        if n == "\t":
            pass
        if n == "\n":
            sorted_string = sorted_string+n
        elif p[j-1] == "\n":
            sorted_string = sorted_string+n
        elif n != "\n" and n != "\t":
            if j >= 1 and p[j-1] == "\t":
                sorted_string = "\t"+sorted_string+n+" "
            else:
                sorted_string = sorted_string+n+" "

print(sorted_string)

x.close()
y.close()