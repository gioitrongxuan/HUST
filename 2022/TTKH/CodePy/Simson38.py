import math
a = 0
b = 0.8
#So doan: n
n = 1
h = (b-a)/(3*n)
def fx(x):
    return 0.2+25*x-200*x**2+675*x**3-900*x**4+400*x**5
s = 0
for i in range(n):
    s+=fx(a+i*h) + 3 * fx(a+(i+1)*h) + 3 * fx(a+(i+2)*h) + fx(a+(i+3)*h)

print(s*3*h/8)