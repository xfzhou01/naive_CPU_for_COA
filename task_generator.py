#import numpy as np

depth = 256
width = 16


file = open('task1.coe','w')

file.write("memory_initialization_radix = 16;\n")
file.write("memory_initialization_vector = \n")


for i in range(depth):

    # Sum from 1 to 100
    if i==0:
        file.write('02A0,\n')
    elif i==1:
        file.write('01A4,\n')
    elif i==2:
        file.write('02A2,\n')
    elif i==3:
        file.write('01A3,\n')
    elif i==4:
        file.write('02A4,\n')
    elif i==5:
        file.write('03A3,\n')
    elif i==6:
        file.write('01A4,\n')
    elif i==7:
        file.write('02A3,\n')
    elif i==8:
        file.write('04A1,\n')
    elif i==9:
        file.write('01A3,\n')
    elif i==10:
        file.write('0504,\n')

    elif i==11:               # Logic shift * 3
        file.write('02A4,\n')
    elif i==12:
        file.write('0AA4,\n')
    elif i==13:
        file.write('01A4,\n')
    elif i==14:
        file.write('02A4,\n')
    elif i==15:
        file.write('0AA4,\n')
    elif i==16:
        file.write('01A4,\n')
    elif i==17:
        file.write('02A4,\n')
    elif i==18:
        file.write('0AA4,\n')
    elif i==19:
        file.write('01A4,\n')

    elif i==20:
        file.write('02A4,\n')
    elif i==21:               # *4
        file.write('06A5,\n')
    elif i==22:
        file.write('01A4,\n')

    elif i==23:
        file.write('02A4,\n')
    elif i==24:               # *3
        file.write('06A6,\n')
    elif i==25:
        file.write('01A4,\n')

    elif i==26:
        file.write('02A4,\n')
    elif i==27:               # *2
        file.write('06A7,\n')
    elif i==28:
        file.write('01A4,\n')
    elif i==29:
        file.write('02A4,\n')
    elif i==30:
        file.write('FFFF,\n')

        # Variables
    elif i==160:              # A0
        file.write('0000,\n')
    elif i==161:              # A1
        file.write('0001,\n')
    elif i==162:              # A2
        file.write('0064,\n')
    elif i==165:              # A5 = 4
        file.write('0004,\n')
    elif i==166:              # A6 = 3
        file.write('0003,\n')
    elif i==167:              # A7 = 2
        file.write('0002,\n')
    elif i!=255:
        file.write('0000,\n')
    else:
        file.write('0000\n')
