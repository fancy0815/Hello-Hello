solution a
n=int(input())
line = list(map(int,input().split()))
print(all([x > 0 for x in line]) and any([str(x) == str(x)[::-1] for x in line]))

solution b
n = int(input())
list_a = list(map(int, input().split()))

result = False
if all([x>0 for x in list_a]):
    if any([str(x) == str(x)[::-1] for x in list_a]):
        result = True
print(result)


solution c
n = int(input())
list_a = list(map(int, input().split()))

result = False
if all([x>0 for x in list_a]):
    for i in list_a:
        if str(i) == str(i)[::-1]:
            result = True 
print(result)



solution d
n = int(input())
list_a = list(map(int, input().split()))

result = False
for i in list_a:
    if str(i) == str(i)[::-1]:
        result = True
        
for i in list_a:
    if i != abs(i):
        result = False

print(result)
