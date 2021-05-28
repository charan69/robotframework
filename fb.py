n = input('enter range of fb ')
n = int(n)
a = 0
b = 1
c = 0
print(f'{a} {b}')
for i in range(2, n):
    print(f'{c}')
    c = a+b
    a = b
    b = c

