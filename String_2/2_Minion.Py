def minion_game(string):
    con = 0
    vow = 0
    length = len(string)
    for i, char in enumerate(string):
        if char in "AEIOU":
            vow += length - i
        else:
            con += length - i

    if vow > con:
        print ("Kevin "+str(vow))
    elif vow < con:
        print ("Stuart "+str(con))
    else:
        print ("Draw")

if __name__ == '__main__':
    s = input()
    minion_game(s)
