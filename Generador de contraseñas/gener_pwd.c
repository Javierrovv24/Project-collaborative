#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>
#define MIN_LENGTH 6
#define MAX_LENGTH 12
void generatePassword(int length, char* password) {
    const char charset[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~";
    int charsetSize = sizeof(charset) - 1;
    for (int i = 0; i < length; i++) {
        int key = rand() % charsetSize;
        password[i] = charset[key];
    }
    password[length] = '\0';
}
void reverseString(const char* input, char* reversed) {
    int length = strlen(input);
    for (int i = 0; i < length; i++) {
        reversed[i] = input[length - 1 - i];
    }
    reversed[length] = '\0';
}
int main() {
    int length;
    char password[MAX_LENGTH + 1];
    char reversedPassword[MAX_LENGTH + 1];
    srand(time(NULL));
    printf("Ingrese el número de caracteres para la contraseña (entre %d y %d): ", MIN_LENGTH, MAX_LENGTH);
    if (scanf("%d", &length) != 1 || length < MIN_LENGTH || length > MAX_LENGTH) {
        printf("Longitud incorrecta. Por favor, intente de nuevo.\n");
        printf("Ingrese el número de caracteres para la contraseña (entre %d y %d): ", MIN_LENGTH, MAX_LENGTH);
        if (scanf("%d", &length) != 1 || length < MIN_LENGTH || length > MAX_LENGTH) {
            printf("NO SE HA GENERADO NINGUNA CONTRASEÑA\n");
            printf("PROGRAMA TERMINADO\n");
            return 0;
        }
    }
    generatePassword(length, password);
    printf("Contraseña generada: %s\n", password);
    reverseString(password, reversedPassword);
    printf("Contraseña al revés: %s\n", reversedPassword);
    return 0;
}
