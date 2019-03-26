test_num = int(input())
for i in range (test_num):
    a = int(input())
    set_a = set(map(int,input().split()))
    b = int(input())
    set_b = set(map(int,input().split()))

    # if len(set_a - set_b) == 0:
        # print(True)
    # else:
        # print(False)
    
    if set_a - set_b:
        print(False)
    else:
        print(True)
