import math

oldB = 0
newB = 1
#sai so
h=0.000001

def fx(b):
    return math.exp(-b/2)*math.sin(3*b)

def findS(oldB, newB):
    return round((fx(newB) - fx(oldB))/(newB - oldB),7)

def findNewB(newB, s):
    return newB - fx(newB)/s
while fx(newB)>h:
    tmp = newB
    newB = findNewB(newB, findS(oldB, newB))
    oldB = tmp
    print(f"{oldB} {newB} {fx(newB)}")  
