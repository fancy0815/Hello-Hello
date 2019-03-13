if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    sorted_num = sorted(arr)
    for i in sorted_num[::-1]:
        if i < sorted_num[-1]:
            print(i)
            break

# max_max, max-sec = float("-inf"), float("-inf")
# for i in arr:
#         if i > max_max:
#             max_sec = max_max
#             max_max = i
#         elif i < max_max and i > max_sec:
#             max_sec = i
#         elif i <max_sec:
#             pass
#     print(max_sec)
