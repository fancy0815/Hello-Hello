import numpy as np

N,M = map(int,input().split())
arrA = np.array([input().split() for _ in range(N)],int)
# arrS = np.sum(arrA,axis = 0)
# print(np.prod(arrS))

print(np.prod(np.sum(arrA, axis=0), axis=0))
