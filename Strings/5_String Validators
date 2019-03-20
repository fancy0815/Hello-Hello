if __name__ == '__main__':
    str = input()
    # print (any(c.isalnum() for c in str))
    # print (any(c.isalpha() for c in str))
    # print (any(c.isdigit() for c in str))
    # print (any(c.islower() for c in str))
    # print (any(c.isupper() for c in str))
    
anyalphanumeric = 0
anyalphabetical = 0
anydigit = 0
anylower = False
anyupper = False

for i in range(len(str)):
    if str[i].isalnum() and anyalphanumeric ==0:
        anyalphanumeric = 1
    
    if str[i].isalpha() and anyalphabetical ==0:
        anyalphabetical = 1

    if str[i].isdigit() and anydigit ==0:
        anydigit = 1

    if str[i].islower() and anylower ==0:
        anylower = True

    if str[i].isupper() and anyupper ==0:
        anyupper = True

print(bool(anyalphanumeric))
print(bool(anyalphabetical))
print(bool(anydigit))
print(anylower)
print(anyupper)
