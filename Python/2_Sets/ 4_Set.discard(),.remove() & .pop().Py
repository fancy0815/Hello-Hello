n = int(input())
s = set(map(int, input().split()))

for i in range(int(input())):
    cmmd, *num = input().split()
    if cmmd == "pop":
        s.pop()
    elif cmmd == "remove":
        s.remove(int(num[0]))
    elif cmmd == "discard":
        s.discard(int(num[0]))
print(sum(s))
