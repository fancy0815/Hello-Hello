import numpy as np 

temp = list(map(float,input().split()))
num = int(input())

print(np.polyval(temp, num))
