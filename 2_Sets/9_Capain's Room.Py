k = int(input())
Entry = list(map(int,input().split()))
Total = sum(list(set(Entry))) * k
Cap = (Total - sum(Entry))//(k-1)
print(Cap)
