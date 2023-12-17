#Script for editing definition.csv 
#Removes provinces from list and spits output into Python Scripts/log.txt


#For reference,
# province[0] == Id of the province
# province[1-3] == R,G,B respectively
# province[4] == name of the province in files
# province[5] == comment line, usually "x" 



string = ""
z=0


with open(r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\csv_script.txt","r") as csv:
    with open(r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\lakes_script.txt","r") as blacklist:
        with open(r"Documents\Paradox Interactive\Europa Universalis IV\mod\1.34_transfer\Python Scripts\log.txt","w") as log:
            b = blacklist.read()
            c = b.replace("\t"," \t ")
            d = c.replace("\n", " \n ")
            blacklist = d.split(" ")
            for lines in csv:
                province = lines.split(";")
                string = ""
                if province[0] in blacklist:
                    del province[5]
                    if province[4] == "RNW":
                        pass
                    else:
                        province[4] = "RNW"
                        for items in province:
                            string = string+items+";"
                        print("#"+string)
                string = ""
                for num, items in enumerate(province):
                    if num<5:
                        try :
                            if "x" in province[5] and items == province[4]:
                                province[5] = ""
                                string = string+items+";"+"x"
                            elif items == province[4]:
                                string = string+items+";"
                            else:
                                string = string+items+";"
                        except:
                            if items == province[4]:
                                string = string+items+";"
                            else:
                                string = string+items+";"

                log.write(string+"\n")