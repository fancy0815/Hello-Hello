import numpy as np

N= int(input())

arrA = np.array([input().split() for _ in range(N)],int)
arrB = np.array([input().split() for _ in range(N)],int)

print(np.dot(arrA,arrB))

