import numpy as np

r,c = map(int,input().split())
arr = []
for _ in range(r):
    arr += [list(map(int,input().split()))]

init_arr = np.array(arr,int)

print(np.transpose(init_arr))
print(init_arr.flatten())
