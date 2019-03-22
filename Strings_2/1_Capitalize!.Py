def solve(s):
    temp = list(s)
    counter = 0
    for i, char in enumerate(temp):
        if char == " ":
            counter = 0
        elif counter == 0:
            temp[i]=temp[i].upper()
            counter = 1   
    return ("".join(temp))

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')

    s = input()

    result = solve(s)

    fptr.write(result + '\n')

    fptr.close()
