import math

a = 0.2
b = 0.8

#Số đoạn n - dùng cho hàm mở rộng
n = 3
h = (b-a)/n

def fx(x):
    return 0.3+ 20*x -140*(x**2) + 730*(x**3) - 810*(x**4) + 200*(x**5)
s = 0
for i in range(n):
    s+=fx(a+i*h) + fx(a+(i+1)*h)

print(s*h/2)