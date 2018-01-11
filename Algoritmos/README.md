# Algoritmo

## Definición

Conjunto prescrito de intrucciones o reglas definidas, ordenadas y finitas (**debe tener un fin**) que permita llevar una actividad mediante pasos sucesivos y que no dependa de quien la realice.

## Diagramas de Flujo

Los diagramas de flujo son descripciones gráficas de algoritmos; usan símbolos conectados con flechas para indicar la secuencia de instrucciones y están regidos por ISO.

<br>
<p align="center">
<img src="https://github.com/lgaetecl/Cap/blob/master/Algoritmos/img/AlgoritmoRaiz.png">
</p>

## Pseudocódigo

Es una descripción de alto nivel de un algoritmo que emplea una mezcla de lenguaje natural con algunas convenciones sintácticas propias de lenguajes de programación.

## Variables

Una variable es un espacio de almacenamiento de datos, con un nombre y un valor asociado. Para declarar una variable, se deben tener las siguientes consideraciones:

- Pueden ser alfanuméricas iniciando siempre con una letra, mayúsculas o minúsculas.
- Pueden iniciarse sin un valor.
- No puede tener el mismo nombre de una variable reservada por el sistema o algún lenguaje de programación.
- No puede comenzar con números.
- No pueden tener espacios.
- No pueden contener caracteres especiales como $ # * = ?.

```
variable1 = 1
variable2 = "hola mundo"
```

### Tipos de Variables

#### Númericos 

Tipo de dato que representa un número entero, estos serian cualquier número (positivo, negativo e incluido el cero) que no tengan una coma decimal.

Ejemplo:
```
numerico1 = 300
numerico2 = -2
numerico3 = 0
```

#### Decimales o de coma flotante

Tipo de dato que representa un número Real, estos serian cualquier número (positivo, negativo e incluido el cero) que tenga una estructura entera y una parte decimal

Ejemplo:
```
flotante1 = 1.102938
flotante2 = -29.128370123
flotante3 = 0.12361283
```

#### Lógicos

Este tipo de dato se utiliza para almacenar valores lógicos, los que pueden ser true o false

Ejemplo:
```
logico1 = true
logico2 = false
```

#### Carácter

Es un dígito individual el cual se puede representar como un numero, letra y simbolos. Por lo general se utilizan con comillas dobles (" ") o simples (' ')

Ejemplo:
```
caracter1 = "a"
caracter2 = "1"
caracter3 = "#"
```
#### Cadenas de Texto

Es una secuencia de forma ordenada de caracteres que tiene que ser finita. Por lo general y al igual que con los caracteres se utilizan con comillas dobles (" ") o simples (' ')

Ejemplo:
```
cadena1 = "Stark"
cadena2 = "Lannister"
cadena3 = "Targaryen"
```

## Condición

Es una instrucción o grupo de instrucciones que pueden o no ejecutarse, según el cumplimiento de una condición.

### Operadores de Condición 

Estos operadores tiene como objetivo entregar un valor Verdadero o Falso posterior a realizar su evaluación. Los operadores disponibles son los siguientes.

```
x != y     # x no es igual a y
x > y      # x es mayor que y
x < y      # x es menor que y
x >= y     # x es mayor o igual que y
x <= y     # x es menor o igual que y
x == y     # x es igual a y
```

### Operadores Matemáticos

Estos operadores representan acciones que se pueden realizar 

```
x + y      # Suma x e y
x - y      # Resta x e y
x * y      # Multiplica x e y
x ** y     # Representa una potencia de x elevado a y
x / y      # Divide x e y
x % y      # Obtiene el Resto de una división entre x e y
```

### Operadores Logicos

Sirven para anidar una o mas condiciones en base al valor entregado por la condición, estos operadores siguen las propiedades del Algebra Booleana.

Existen 3 tipos de operadores que son: AND, OR y NOT 

Se puede revisar la estructura básica en la siguiente imagen.

<p align="center">
<img src="https://unicrom.com/wp-content/uploads/algebra_booleana_1.gif">
</p>

### Estructura de Condición

#### Condición Simple:

```
Si condición Entonces
    instrucción;
Fin Si
```

#### Condición Doble:

```
Si condición Entonces
    instrucción1;
Si No Entonces
    instrucción2;
Fin Si
```

#### Condición Multiple:

```
Si condición1 Entonces
    instrucción1;
Si No si condición2 Entonces
    instrucción2;
Si No si condición3 Entonces
    instrucción3;
Si No Entonces
    instrucción4:
Fin Si
```

## Estructuras Iterativas

Representan la ejecución de instrucciones en más de una vez.

#### Bucle Mientras

El bucle se repite mientras la condición sea cierta, si al llegar por primera vez al bucle mientras la condición es falsa, el cuerpo del bucle no se ejecuta alguna vez.

``` 
Mientras condición Hacer
    instrucción;
Fin Mientras
```
#### Bucle Para

Una estructura de control muy común es el ciclo FOR, la cual se usa cuando se desea iterar un número conocido de veces, empleando como índice una variable que se incrementa (o decrementa):

```
Para Inicialización de Variable; Condición; Incremento/Decremento Hacer
    instrucción;
Fin Para
```

## Funciones

Como su homologo en matemáticas, una función transforma datos de un problema de entrada en datos de una solución. Por lo general se debe especificar los datos de entrada entre una estructura de parentesis.

Cabe mencionar que una función debe entregar una solución por lo que el algoritmo que este contenido debe tener fin.

Ejemplo: Algoritmo que muestre que números son múltiplos de 2 o de 3 que hay entre 1 y 1000.

```
Funcion Multiplos()
    Para num=1; num<=1000; num=num + 1 Hacer
        Si (num % 2 == 0 o num % 3 == 0) Entonces
            Mostrar num
        Fin Si
    Fin Para
Fin Funcion
```
