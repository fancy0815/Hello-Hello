import numpy as np

N,M=map(int,input().split())

a = np.array([input().split() for _ in range(N)],dtype = int)
b = np.array([input().split() for _ in range(N)],dtype = int)

print(np.add(a,b),a-b,np.multiply(a,b),a//b,a%b,a**b,sep="\n")
