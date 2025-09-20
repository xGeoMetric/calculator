#include <stdio.h>

void printHeader() {
    printf("=====================================\n");
    printf("        KALKULATOR SEDERHANA         \n");
    printf("          Dibuat oleh Bangkah        \n");
    printf("=====================================\n");
}

int main() {
    char operator;
    double num1, num2, result;

    printHeader();

    printf("Pilih operator: [+] [-] [*] [/]\n");
    printf("Masukkan operator: ");
    scanf(" %c", &operator);

    printf("Masukkan angka pertama : ");
    scanf("%lf", &num1);
    printf("Masukkan angka kedua   : ");
    scanf("%lf", &num2);

    printf("-------------------------------------\n");

    switch (operator) {
        case '+':
            result = num1 + num2;
            printf("Hasil %.2lf + %.2lf = %.2lf\n", num1, num2, result);
            break;
        case '-':
            result = num1 - num2;
            printf("Hasil %.2lf - %.2lf = %.2lf\n", num1, num2, result);
            break;
        case '*':
            result = num1 * num2;
            printf("Hasil %.2lf * %.2lf = %.2lf\n", num1, num2, result);
            break;
        case '/':
if (num2 != 0) {
                result = num1 / num2;
                printf("Hasil %.2lf / %.2lf = %.2lf\n", num1, num2, result);
            } else {
                printf("Error: Tidak bisa membagi dengan nol!\n");
            }
            break;
        default:
            printf("Operator tidak dikenali!\n");
    }

    printf("=====================================\n");
    printf("     Terima kasih telah menggunakan  \n");
    printf("          Kalkulator Bangkah!        \n");
    printf("=====================================\n");

    return 0;
}
