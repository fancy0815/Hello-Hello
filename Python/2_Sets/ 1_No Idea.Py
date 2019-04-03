n,m = map(int,input().split())
list_arr = list(map(int,input().split()))
set_a = set(map(int,input().split()))
set_b = set(map(int,input().split()))
happiness = 0

for i in list_arr:
    if i in set_a:
        happiness += 1
    elif i in set_b:
        happiness -= 1
print(happiness)
