import numpy as np

# np.set_printoptions(legacy='1.13')

#if N==M:
#print(np.identity(N))
#else:

N,M = map(int,input().split())
print(np.eye(N,M,k=0))
