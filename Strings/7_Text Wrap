import textwrap

def wrap(string, max_width):
    # temp_list = list(string)
    # for i in range (len(string),0,-1):
        # if i % 4 ==0:
            # temp_list.insert(i,"\n")
    # return "".join(temp_list)
    
    answer = []
    for i in range (0,len(string),max_width):
        answer.append(string[i:i+max_width])
    return "\n".join(answer)

if __name__ == '__main__':
    string, max_width = input(), int(input())
    result = wrap(string, max_width)
    print(result)
