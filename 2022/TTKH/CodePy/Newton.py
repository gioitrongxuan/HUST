import math

#Nhập nghiệm xấp xỉ xuất phát
b = 2
#sai số chấp nhận
h = 0.00001
def fx(b):
    return b*b - 2

def dfx(b):
    return 2*b

def findMid(b):
    return b - fx(b)/dfx(b)
print(f"{b} {fx(b)}")
while abs(fx(b))>h:
    b = findMid(b)
    print(f"{round(b,4)} {round(fx(b),4)}")
