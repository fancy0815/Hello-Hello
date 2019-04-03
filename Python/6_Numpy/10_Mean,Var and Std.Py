import numpy as np

np.set_printoptions(legacy='1.13')

N,M = map(int,input().split())

arr = np.array([input().split() for _ in range(N)],int)

print(np.mean(arr,axis = 1))
print(np.var(arr,axis = 0))
print(np.std(arr))
