x = int(input())
ENG = set(map(int,input().split()))
y = int(input())
FCH = set(map(int,input().split()))

SUM = ENG.union(FCH)
print(len(SUM))
