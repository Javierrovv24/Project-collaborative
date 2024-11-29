#include <iostream>
#include <cstdlib>
#include <ctime>
#include <cstring>

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

    srand(time(nullptr));

    std::cout << "Ingrese el número de caracteres para la contraseña (entre " << MIN_LENGTH << " y " << MAX_LENGTH << "): ";
    if (!(std::cin >> length) || length < MIN_LENGTH || length > MAX_LENGTH) {
        std::cout << "Longitud incorrecta. Por favor, intente de nuevo.\n";
        std::cout << "Ingrese el número de caracteres para la contraseña (entre " << MIN_LENGTH << " y " << MAX_LENGTH << "): ";
        if (!(std::cin >> length) || length < MIN_LENGTH || length > MAX_LENGTH) {
            std::cout << "NO SE HA GENERADO NINGUNA CONTRASEÑA\n";
            std::cout << "PROGRAMA TERMINADO\n";
            return 0;
        }
    }

    generatePassword(length, password);
    std::cout << "Contraseña generada: " << password << "\n";

    reverseString(password, reversedPassword);
    std::cout << "Contraseña al revés: " << reversedPassword << "\n";

    return 0;
}
