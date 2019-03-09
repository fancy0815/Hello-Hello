if __name__ == '__main__':
    N = int(input())
    list = []
    for i in range(N):
        commd = input().split()
        if commd[0] == "insert":
            list.insert(int(commd[1]),int(commd[2]))
        elif commd[0] == "remove":
            list.remove(int(commd[1]))
        elif commd[0] == "append":
            list.append(int(commd[1]))
        elif commd[0] == "sort":
            list.sort()
        elif commd[0] == "pop":
            list.pop()
        elif commd[0] == "reverse":
            list.reverse()
        elif commd[0] == "print":
            print(list)
