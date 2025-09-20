#include <stdio.h>

int main() {
    char operator;
    double num1, num2, result;

    printf("=== Kalkulator Sederhana ===\n");
    printf("Operator (+, -, *, /): ");
    scanf(" %c", &operator);

    printf("Masukkan angka pertama: ");
    scanf("%lf", &num1);
    printf("Masukkan angka kedua: ");
    scanf("%lf", &num2);

    switch (operator) {
        case '+':
            result = num1 + num2;
            printf("Hasil: %.2lf\n", result);
            break;
        case '-':
            result = num1 - num2;
            printf("Hasil: %.2lf\n", result);
            break;
        case '*':
            result = num1 * num2;
            printf("Hasil: %.2lf\n", result);
            break;
        case '/':
            if (num2 != 0) {
                result = num1 / num2;
                printf("Hasil: %.2lf\n", result);
            } else {
                printf("Error: Pembagian dengan nol tidak diperbolehkan.\n");
            }
            break;
        default:
            printf("Operator tidak valid.\n");
    }

    return 0;
}
