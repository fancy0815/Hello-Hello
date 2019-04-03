def print_rangoli(size):
    alpha = list('abcdefghijklmnopqrstuvwxyz')
    len_0 = size - 1
    lines = [(alpha[len_0:(len_0-i-1):-1] + alpha[size-i:size]) for i in range(len_0)]
    new_lines = ["-".join(i).center(size*4-3, "-") for i in lines] 
    
    print("\n".join(new_lines + ["-".join(alpha[size-1:0:-1] + alpha[:size])] + new_lines[::-1]))

if __name__ == '__main__':
    n = int(input())
    print_rangoli(n)
