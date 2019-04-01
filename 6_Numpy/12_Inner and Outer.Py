import numpy as np

arrA = np.array(input().split(),int)
arrB = np.array(input().split(),int)

print(np.inner(arrA,arrB))
print(np.outer(arrA,arrB))
