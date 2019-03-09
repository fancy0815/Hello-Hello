if __name__ == '__main__':
    sheet = dict()
    for _ in range(int(input())):
        name = input()
        score = float(input())
        if score in sheet:
            sheet[score].append(name)
        else:
            sheet[score]=[name]
i = sorted(sheet.keys())[1]
if i in sheet:
    print("\n".join(sorted(sheet[i])))
else:
    print("Error occured")

