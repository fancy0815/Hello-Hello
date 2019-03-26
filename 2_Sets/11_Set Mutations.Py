n = int(input())
list_a = set(map(int, input().split()))

for _ in range(int(input())):
    cmmd, *num = input().split()
    list_b = set(map(int, input().split()))
    
    if len(num) == 0:
        pass
    else:
        num = int(num[0])

    if cmmd == "update":
        list_a |= list_b 
    elif cmmd == "intersection_update": 
        list_a &= list_b
    elif cmmd == "symmetric_difference_update": 
        list_a ^= list_b 
    elif cmmd == "difference_update":
        list_a -= list_b

print(sum(list_a))
