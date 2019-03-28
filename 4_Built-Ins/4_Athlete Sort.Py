#!/bin/python3

import math
import os
import random
import re
import sys



if __name__ == '__main__':
    nm = input().split()

    n = int(nm[0])

    m = int(nm[1])

    arr = []

    for _ in range(n):
        arr.append(list(map(int, input().rstrip().split())))

    k = int(input())

rank = sorted(arr,key=lambda x: x[k])
# for i in range(len(rank)):
    # print(" ".join(map(str,rank[i])))

print("\n".join([" ".join(map(str,rank[i]))for i in range(len(rank))]))
