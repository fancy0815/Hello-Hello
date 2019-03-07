if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    sorted_num = sorted(arr)
    for i in sorted_num[::-1]:
        if i < sorted_num[-1]:
            print(i)
            break
