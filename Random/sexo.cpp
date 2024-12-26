//============================================================================

// Name        : sexo.cpp

// Author      : javie

// Version     :

// Copyright   : Your copyright notice

// Description : Hello World in C++, Ansi-style

//============================================================================



#include <iostream>

using namespace std;

#include <string>



#include <iostream>

#include <string>



int main() {

    std::string input;



    std::cout << "¡Escribe algo y te responderé con 'sexo'! Escribe 'salir' para terminar." << std::endl;



    while (true) {

        std::cout << "Tú: ";

        std::getline(std::cin, input); // Leer la línea completa de entrada



        if (input == "salir") {

            std::cout << "Programa terminado. ¡Adiós!" << std::endl;

            break;

        } else {

            std::cout << "sexo" << std::endl;

        }

    }



    return 0;

}
