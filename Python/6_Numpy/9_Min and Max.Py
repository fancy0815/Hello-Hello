import numpy as np

N,M = map(int,input().split())

arrA = np.array([input().split() for _ in range(N)],int)

arrMIN = np.min(arrA,axis = 1)
print(np.max(arrMIN,axis = 0))
