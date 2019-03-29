cube = lambda x: x**3 # complete the lambda function 

def fibonacci(n):
    # return a list of fibonacci numbers
    if n==1:
        return [0]
    if n==0:
        return []
    fib = [0,1]
    for i in range (2,n):
        fib += [sum(fib[i-2:i])]
    return fib
    # return fib[0:n]
    # return[sum(fib[i-2:i]) for x in range(n)]
        

if __name__ == '__main__':
    n = int(input())
    print(list(map(cube, fibonacci(n))))
