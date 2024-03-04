import math

#Ông nhập hàm ở đây
def fx(b):
    return b**3-b-1

#Nhập giới hạn [a,c]
a = 1
c = 4

#b là điểm nằm giữa
b = (a+c)/2

#Nhập sai số cho phép h
h = 0.02
print('a', 'b', 'c', "f(a)", "f(b)", "f(c)")
print(f"{a} {b} {c} {fx(a)} {fx(b)} {fx(c)}")
while abs(fx(b))>h:
    if fx(b)*fx(a)>0:
        a = b
    else:
        c = b
    b = (a+c)/2
    print(f"{a} {b} {c} {fx(a)} {fx(b)} {fx(c)}")



