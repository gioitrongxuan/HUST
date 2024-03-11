import math
a = 0
b = 0.8
#So doan: n
n = 1
h = (b-a)/(2*n)
def fx(x):
    return 0.2+25*x-200*x**2+675*x**3-900*x**4+400*x**5
s = 0
for i in range(n):
    s+=fx(a+i*h) + 4 * fx(a+(i+1)*h) + fx(a+(i+2)*h)

print(s*h/3)