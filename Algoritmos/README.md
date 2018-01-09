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

### Variables

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

### Condición

### Estructura de Condición

Son instrucciones que pueden o no ejecutarse, según el cumplimiento de una condición.

Condición Simple:

```
Si condición Entonces
    instrucción;
Fin Si
```

Condición Doble:

```
Si condición Entonces
    instrucción1;
Si No Entonces
    instrucción2;
Fin Si
```

Condición Multiple:

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

### Estructuras Iterativas

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

### Funciones

Como su homologo en matemáticas, una función recibe uno o multiples valores de entrada y regresa una salida, es necesario dejar explicitamente los valores de entrada entre paréntesis y dependiendo del lenguaje de programación se puede hacer en la respuesta.

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
