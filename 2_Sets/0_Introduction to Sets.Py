def average(array):
    dist_set = set(array)
    return(sum(dist_set)/len(dist_set))

if __name__ == '__main__':
    n = int(input())
    arr = list(map(int, input().split()))
    result = average(arr)
    print(result)
