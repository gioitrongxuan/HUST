import math

def fx(b):
    return round(math.exp(b) - 2, 5)

def findMid(a,c):
    return round((a*fx(c) - c*fx(a))/(fx(c) - fx(a)), 5)

#Nhập giới hạn [a,c]
a = 0
c = 2

#Nhập hàm
b = (a+c)/2

#Nhập sai số cho phép h
h = 0.01

print('a', 'b', 'c', "f(a)", "f(b)", "f(c)")
print(f"{a} {b} {c} {fx(a)} {fx(b)} {fx(c)}")
while abs(fx(b))>h:
    if fx(b)*fx(a)>0:
        a = b
    else:
        c = b
    b = findMid(a,c)
    print(f"{a} {b} {c} {fx(a)} {fx(b)} {fx(c)}")



