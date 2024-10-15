#!/usr/bin/env python3
import math
import random

if __name__ == "__main__":
    max_ans = 100

    ans = random.randint(1, max_ans)
    while True:
        input_num = int(input())

        if input_num < 1 or max_ans < input_num:
            print("1から" + max_ans + "までの値を入力してください！")
            continue

        if input_num == ans:
            print("まひろもふりすぎてまひもふ!!!!!")
            break

        else:
            print("まひ" * math.gcd(input_num, ans))
