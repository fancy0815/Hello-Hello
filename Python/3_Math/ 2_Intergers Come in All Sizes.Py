# a,b,c,d = (int(input()) for _ in range(4))

# a = int(input())
# b = int(input())
# c = int(input())
# d = int(input())

# print(pow(a,b)+pow(c,d))


a = []
for _ in range (4):
    a += [int(input())]
print(pow(a[0],a[1])+pow(a[2],a[3]))
