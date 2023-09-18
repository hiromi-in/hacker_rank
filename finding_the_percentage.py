if __name__ == '__main__':
    n = int(input())
    student_marks = {}
    for _ in range(n):
        name, *line = input().split()
        scores = list(map(float, line))
        student_marks[name] = scores
    query_name = input()
     
    score = student_marks[query_name]
    
    total = 0
    
    for i in score:
        total += i
    
    print(f'{round(total / len(score), 2):.02f}')
