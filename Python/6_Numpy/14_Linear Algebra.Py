import numpy as np

n = int(input())

arr = np.array([input().split() for _ in range (n)],float)

print(np.linalg.det(arr))
