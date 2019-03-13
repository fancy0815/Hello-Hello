def swap_case(s):
    temp_list = [0]*len(s)
    for(i,c) in enumerate(s):
        if c >= "a" and c <= "z":
            temp_list[i] = s[i].upper()
        elif c >= "A" and c <= "Z":
            temp_list[i] = s[i].lower()
        else:
            temp_list[i] = s[i]
    return "".join(temp_list)

if __name__ == '__main__':
    s = input()
    result = swap_case(s)
    print(result)
