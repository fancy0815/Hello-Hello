x = int(input())
ENG = set(map(int,input().split()))
y = int(input())
FCH = set(map(int,input().split()))

ONLY_E = ENG - FCH
print(len(ONLY_E))
