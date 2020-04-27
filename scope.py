global a
a = 250
def f1():
    a = 30
    print(a)
def f2():
    print(a)


f1()
f2()
print(a)
