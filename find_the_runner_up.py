if __name__ == '__main__':
    n = int(input())
    arr = map(int, input().split())
    
list_arr = list(arr)

max_num = max(list_arr)

arr_wo = [i for i in list_arr if i != max_num]

second_biggest_num = 0

for i in arr_wo:
    if second_biggest_num < i:
        second_biggest_num = i

print(second_biggest_num)
