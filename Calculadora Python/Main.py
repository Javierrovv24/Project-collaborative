#Calculadora del javi
import math

# Funciones
def suma():
    num1 = int(input("Ingrese el primer número: "))
    num2 = int(input("Ingrese el primer número: "))
    print(f"Resultado: {num1 + num2}")

def resta():
    num1 = int(input("Ingrese dos número: "))
    num2 = int(input("Ingrese el primer número:"))
    print(f"Resultado: {num1 - num2}")

def multiplicacion():
    num1 = int(input("Ingrese dos número: "))
    num2 = int(input("Ingrese el primer número:"))
    print(f"Resultado: {num1 * num2}")

def division():
    num1 = int(input("Ingrese dos número: "))
    num2 = int(input("Ingrese el primer número:"))
    if num2 != 0:
        print(f"Resultado: {num1 / num2}")
    else:
        print("Error: División por cero.")

def gcd(a, b):
    while b != 0:
        a, b = b, a % b
    return a

def mcm():
    num1 = int(input("Ingrese un número: "))
    num2 = int(input("Ingrese el otro número"))
    result = (num1 * num2) // gcd(num1, num2)
    print(f"MCM: {result}")

def mcd():
    num1 = int(input("Ingrese dos número: "))
    num2 = int(input("Ingrese el primer número:"))
    result = gcd(num1, num2)
    print(f"MCD: {result}")

class Fraccion:
    def __init__(self, numerador, denominador):
        self.numerador = numerador
        self.denominador = denominador

def simplificar(f):
    divisor = gcd(f.numerador, f.denominador)
    f.numerador //= divisor
    f.denominador //= divisor
    return f

def sumar_fracciones():
    f1 = Fraccion(int(input("Ingrese la primera fracción (numerador): ")), int(input("denominador: ")))
    f2 = Fraccion(int(input("Ingrese la segunda fracción (numerador): ")), int(input("denominador: ")))
    resultado = Fraccion(f1.numerador * f2.denominador + f2.numerador * f1.denominador, f1.denominador * f2.denominador)
    resultado = simplificar(resultado)
    print(f"Resultado: {resultado.numerador}/{resultado.denominador}")

def restar_fracciones():
    f1 = Fraccion(int(input("Ingrese la primera fracción (numerador): ")), int(input("denominador: ")))
    f2 = Fraccion(int(input("Ingrese la segunda fracción (numerador): ")), int(input("denominador: ")))
    resultado = Fraccion(f1.numerador * f2.denominador - f2.numerador * f1.denominador, f1.denominador * f2.denominador)
    resultado = simplificar(resultado)
    print(f"Resultado: {resultado.numerador}/{resultado.denominador}")

def multiplicar_fracciones():
    f1 = Fraccion(int(input("Ingrese la primera fracción (numerador): ")), int(input("denominador: ")))
    f2 = Fraccion(int(input("Ingrese la segunda fracción (numerador): ")), int(input("denominador: ")))
    resultado = Fraccion(f1.numerador * f2.numerador, f1.denominador * f2.denominador)
    resultado = simplificar(resultado)
    print(f"Resultado: {resultado.numerador}/{resultado.denominador}")

def dividir_fracciones():
    f1 = Fraccion(int(input("Ingrese la primera fracción (numerador): ")), int(input("denominador: ")))
    f2 = Fraccion(int(input("Ingrese la segunda fracción (numerador): ")), int(input("denominador: ")))
    resultado = Fraccion(f1.numerador * f2.denominador, f1.denominador * f2.numerador)
    resultado = simplificar(resultado)
    print(f"Resultado: {resultado.numerador}/{resultado.denominador}")

def resolver_ecuacion_lineal():
    a = float(input("Ingrese los coeficientes a y b (ax + b = 0): "))
    b = float(input())
    if a != 0:
        x = -b / a
        print(f"Solución: x = {x}")
    else:
        print("Error: a no puede ser 0.")

def resolver_ecuacion_cuadratica():
    a = float(input("Ingrese los coeficientes a, b y c (ax^2 + bx + c = 0): "))
    b = float(input())
    c = float(input())
    discriminante = b * b - 4 * a * c
    if discriminante > 0:
        x1 = (-b + math.sqrt(discriminante)) / (2 * a)
        x2 = (-b - math.sqrt(discriminante)) / (2 * a)
        print(f"Soluciones: x1 = {x1}, x2 = {x2}")
    elif discriminante == 0:
        x = -b / (2 * a)
        print(f"Solución única: x = {x}")
    else:
        print("No hay soluciones reales.")

def sistema_ecuaciones_2x2():
    a1 = float(input("Ingrese los coeficientes a1, b1 y c1 (a1x + b1y = c1): "))
    b1 = float(input())
    c1 = float(input())
    a2 = float(input("Ingrese los coeficientes a2, b2 y c2 (a2x + b2y = c2): "))
    b2 = float(input())
    c2 = float(input())
    det = a1 * b2 - a2 * b1
    if det != 0:
        x = (c1 * b2 - c2 * b1) / det
        y = (a1 * c2 - a2 * c1) / det
        print(f"Solución: x = {x}, y = {y}")
    else:
        print("El sistema no tiene solución única o tiene infinitas soluciones.")

def teorema_pitagoras():
    a = float(input("Ingrese los catetos a y b: "))
    b = float(input())
    c = math.sqrt(a * a + b * b)
    print(f"Hipotenusa: {c}")

def teorema_tales():
    a = float(input("Ingrese las longitudes de los segmentos a, b, c y d: "))
    b = float(input())
    c = float(input())
    d = float(input())
    if a / b == c / d:
        print("Los segmentos son proporcionales según el teorema de Tales.")
    else:
        print("Los segmentos no son proporcionales según el teorema de Tales.")

def regla_de_tres():
    a = float(input("Ingrese los valores a, b, c y d: "))
    b = float(input())
    c = float(input())
    d = float(input())
    resultado = (b * c) / a
    print(f"Resultado: {resultado}")

def area_figuras_geometricas():
    opcion = int(input("Seleccione una figura:\n1. Cuadrado\n2. Rectángulo\n3. Triángulo\n4. Círculo\nOpción: "))
    if opcion == 1:
        lado = float(input("Ingrese el lado del cuadrado: "))
        print(f"Área: {lado * lado}")
    elif opcion == 2:
        largo = float(input("Ingrese el largo y ancho del rectángulo: "))
        ancho = float(input())
        print(f"Área: {largo * ancho}")
    elif opcion == 3:
        base = float(input("Ingrese la base y altura del triángulo: "))
        altura = float(input())
        print(f"Área: {(base * altura) / 2}")
    elif opcion == 4:
        radio = float(input("Ingrese el radio del círculo: "))
        print(f"Área: {3.14159 * radio * radio}")
    else:
        print("Opción inválida.")

def trigonometria_basica():
    opcion = int(input("Seleccione una función trigonométrica:\n1. Seno\n2. Coseno\n3. Tangente\nOpción: "))
    angulo = float(input("Ingrese el ángulo en radianes: "))
    if opcion == 1:
        resultado = math.sin(angulo)
        print(f"Seno: {resultado}")
    elif opcion == 2:
        resultado = math.cos(angulo)
        print(f"Coseno: {resultado}")
    elif opcion == 3:
        resultado = math.tan(angulo)
        print(f"Tangente: {resultado}")
    else:
        print("Opción inválida.")

def teorema_cateto():
    c = float(input("Ingrese la hipotenusa y el cateto: "))
    b = float(input())
    a = math.sqrt(c * c - b * b)
    print(f"Cateto: {a}")

def teorema_altura():
    a = float(input("Ingrese los catetos a y b: "))
    b = float(input())
    h = (a * b) / math.sqrt(a * a + b * b)
    print(f"Altura: {h}")

def menu():
    while True:
        print("\nSeleccione una operación:")
        print("1. Suma")
        print("2. Resta")
        print("3. Multiplicación")
        print("4. División")
        print("5. Mínimo Común Múltiplo")
        print("6. Máximo Común Divisor")
        print("7. Suma de Fracciones")
        print("8. Resta de Fracciones")
        print("9. Multiplicación de Fracciones")
        print("10. División de Fracciones")
        print("11. Resolver Ecuación Lineal")
        print("12. Resolver Ecuación Cuadrática")
        print("13. Sistema de Ecuaciones 2x2")
        print("14. Teorema de Pitágoras")
        print("15. Teorema de Tales")
        print("16. Regla de Tres Compuesta")
        print("17. Cálculo de Áreas de Figuras Geométricas")
        print("18. Trigonometría Básica")
        print("19. Teorema del Cateto")
        print("20. Teorema de la Altura")
        print("0. Salir")
        opcion = int(input("Opción: "))

        if opcion == 1:
            suma()
        elif opcion == 2:
            resta()
        elif opcion == 3:
            multiplicacion()
        elif opcion == 4:
            division()
        elif opcion == 5:
            mcm()
        elif opcion == 6:
            mcd()
        elif opcion == 7:
            sumar_fracciones()
        elif opcion == 8:
            restar_fracciones()
        elif opcion == 9:
            multiplicar_fracciones()
        elif opcion == 10:
            dividir_fracciones()
        elif opcion == 11:
            resolver_ecuacion_lineal()
        elif opcion == 12:
            resolver_ecuacion_cuadratica()
        elif opcion == 13:
            sistema_ecuaciones_2x2()
        elif opcion == 14:
            teorema_pitagoras()
        elif opcion == 15:
            teorema_tales()
        elif opcion == 16:
            regla_de_tres()
        elif opcion == 17:
            area_figuras_geometricas()
        elif opcion == 18:
            trigonometria_basica()
        elif opcion == 19:
            teorema_cateto()
        elif opcion == 20:
            teorema_altura()
        elif opcion == 0:
            print("Saliendo...")
            break
        else:
            print("Opción inválida. Intente nuevamente.")

if __name__ == "__main__":
    menu()
