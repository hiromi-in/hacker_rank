# Enter your code here. Read input from STDIN. Print output to STDOUT

from itertools import permutations

s_k = input().split(' ')
s = s_k[0]
k = s_k[1]

words = sorted(list(permutations(s, int(k))))
for i in words:
    print(''.join(i))
