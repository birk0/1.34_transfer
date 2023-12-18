from PIL import Image

# Enter the dimensions of canvas
X = 4608
Y = 2560

class Colours:

    def __init__(this,value):
        this.value = value

    def isblue(this):
        blues = [9,6,3,4]
        if this.value in blues:
            return True
        else:
            return False
    
    def isred(this):
        red = 1
        if this.value == red:
            return True
        else:
            return False

    def isgreen(this):
        green = 0
        if this.value == green:
            return True
        else:
            return False

    def isyellow(this):
        yellow = 2
        if this.value == yellow:
            return True
        else:
            return False

    def isgrey(this):
        grey = 254
        if this.value == grey:
            return True
        else:
            return False

    def iswhite(this):
        white = 255
        if this.value == white:
            return True
        else:
            return False

pixels = []
line = []
y = 0
x = 0
row = 0
string1 = 0
string2 = 0
string3 = 0

with Image.open(r"PATH") as provinces:
    print("Exporting Pixels...")
    while True:
        if x >= X:
            y+=1
            x = 0
            pixels.append(line)
            line = []
        
        if y >= Y:
            break
        
        a = provinces.getpixel((x,y))
        line.append(a)
        
        x+=1
    print("Loading Pixels.....")
    while True:
        if row >= Y:
            print("Finished!")
            break

        if row > Y/4 and string1 <1:
            string1 = 1
            print("Checking Pixels...")

        if row > Y/2 and string2 <1:
            string2 = 1
            print("Drawing Map...")

        if row > Y/1.5 and string3 <1:
            string3 = 1
            print("Creating Borders...")

        lines = pixels[row]
        prev = row-1
        prevprev = row-2
        for j, n in enumerate(pixels[row]):
            x = j
            y = row
            try:
                this = Colours(pixels[row][j])
                above = Colours(pixels[prev][j])
                below = Colours(pixels[row+1][j])
                direct_left = Colours(pixels[row][j-1])
                direct_right = Colours(pixels[row][j+1])
            except:
                pass

            try:
                if this.isblue() and sum([direct_left.isblue(),direct_right.isblue(),below.isblue(),above.isblue()])>2:
                    print("ILLEGAL RIVER PIXEL AT:",x,",",y)
                
                if this.isred() and sum([direct_left.isred(),direct_right.isred(),below.isred(),above.isred()])>1:
                    print("ILLEGAL RED PIXEL AT:",x,",",y)
                
                if this.isyellow() and sum([direct_left.isyellow(),direct_right.isyellow(),below.isyellow(),above.isyellow()])>1:
                    print("ILLEGAL YELLOW PIXEL AT:",x,",",y)

                if this.isgreen() and sum([direct_left.isgreen(),direct_right.isgreen(),below.isgreen(),above.isgreen()])>1:
                    print("ILLEGAL GREEN PIXEL AT:",x,",",y)
                
            except:
                pass

        row +=1