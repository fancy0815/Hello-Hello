import numpy as np

np.set_printoptions(sign=' ')
# np.set_printoptions(legacy='1.13')

arrA = np.array(input().split(),dtype = float)

print(np.floor(arrA))
print(np.ceil(arrA))
print(np.rint(arrA))
