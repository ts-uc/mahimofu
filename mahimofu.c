#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// 最大公約数を計算する (互助法を使用)
int gcd(int a, int b) {
    while (b != 0) {
        int tmp = b;
        b = a % b;
        a = tmp;
    }
    return a;
}

int main() {
    int max_ans = 100;
    int ans, input_num;

    srand(time(NULL));
    ans = rand() % max_ans + 1;

    while (1) {
        scanf("%d", &input_num);

        if (input_num < 1 || max_ans < input_num){
            printf("1から%dの値を入力してください！\n", max_ans);
            continue;
        }

        if (input_num == ans) {
            printf("まひろもふりすぎてまひもふ!!!!!\n");
            break;
        } else {
            int repeat = gcd(input_num, ans);
            for (int i = 0; i < repeat; i++) {
                printf("まひ");
            }
            printf("\n");
        }
    }
    return 0;
}
