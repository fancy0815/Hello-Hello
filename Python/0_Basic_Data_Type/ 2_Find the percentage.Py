if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
    avg=0
    if query_name in student_marks:
        score_list = student_marks[query_name]
        avg = sum(score_list)/len(score_list)
        print("%.2f" % avg)
