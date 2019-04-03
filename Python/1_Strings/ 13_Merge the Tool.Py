def merge_the_tools(string, k):
    for i in range(len(string)//k):
        sep_list = list(string[i*k:k+i*k])
        uni_string = ""
        for x in sep_list:
            if x not in uni_string:
                uni_string += x
        print(uni_string)

if __name__ == '__main__':
    string, k = input(), int(input())
    merge_the_tools(string, k)
