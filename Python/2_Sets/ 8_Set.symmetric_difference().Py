x = int(input())
ENG = set(map(int,input().split()))
y = int(input())
FCH = set(map(int,input().split()))

EITHER = ENG ^ FCH
# EITHER = ENG.symmetric_difference(FCH)
print(len(EITHER))
