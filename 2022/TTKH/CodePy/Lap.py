import math


b = 0
#nhap sai so
h = 0.00001
#Nhập hàm
def fx(b):
    return math.sqrt(b+2)

print(f"{b} {fx(b)}")
for i in range (100):
    if abs(fx(b))>h:
        b = fx(b)
        print(f"{b} {fx(b)}")