set_a = set(map(int,input().split()))
temp = 1
for _ in range(int(input())):
    set_b = set(map(int,input().split()))
    if set_b - set_a:
        temp = 0
print(bool(temp))
