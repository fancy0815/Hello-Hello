def count_substring(string, sub_string):
    len(1) = len(string)
    len(2) = len(sub_string)
    ans = 0
    for i in range (0,len(1)-len(2)+1)
        if string(i:len(2)+i) == sub_string
        ans += 1
    return ans

if __name__ == '__main__':
    string = input().strip()
    sub_string = input().strip()
    
    count = count_substring(string, sub_string)
    print(count)
