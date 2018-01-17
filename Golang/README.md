# Go o Golang
## Definición

Go o Golang es un lenguaje de programación compilado, concurrente, imperativo, estructurado, orientado a objetos y con un recolector de basura. Fue desarrollado por Google que dentro de sus desarrolladores iniciales están Robert Griesemer,  [Rob Pike](https://en.wikipedia.org/wiki/Rob_Pike) y  [Ken Thompson](https://en.wikipedia.org/wiki/Ken_Thompson).

## Caracteristicas

- Sintaxis similar al lenguaje C
- Tipado Estático<sup id="a1">[1](#f1)</sup>, cuenta con Duck Typing<sup id="a2">[2](#f2)</sup>
- Compilado, aca lo importante es el Cross Compiler
- Concurrente<sup id="a3">[3](#f3)</sup>
- Recolector de Basura
- Paradigmas soportados
  - Programación Orienta a Objetos?<sup id="a4">[4](#f4)</sup>
  - Programación Funcional<sup id="a5">[5](#f5)</sup>
- No maneja excepciones
- UTF-8 por defecto

##  Gopher 

El Go Gopher es la máscota icónica y una de las características que mas distingue a este proyecto, personalmente llegue a este lenguaje por esta mascota :joy:. Fue creado por [Renee French](http://reneefrench.blogspot.cl) e hizo su aparición oficinal en el 2009.

![img](https://qph.ec.quoracdn.net/main-qimg-716a9a93c3a28db4dead8e36d3046035)

## Quienes usan GO

## Instalación

El proceso de instalación de Go es bastante sencillo y consta de los siguientes pasos:

- Ir a la página https://golang.org/dl/ y descargar los binarios de instalación según su sistema operativo.
- Crear la variable ```GOPATH y GOBIN```<sup id="a6">[6](#f6)</sup>
- Para validar la instalación puede ejecutar el comando ```go version``` donde este mostrara la versión que de Go que tiene instalada.

```
$ go version
go version go1.9.2 darwin/amd64
```

## Hola Mundo

Ahora bien como en todos los lenguajes de programación vamos a crear un archivo con el nombre holamundo.go y el contenido de este archivo sera el siguiente


```go
package main

import "fmt"

func main(){
  fmt.Println("Hola Mundo")
}
```

Ahora pasaremos a explicar un poco estas pequeñas lineas de codigo 1 por una.

- package: hace referencia al nombre del paquete donde vivira el codigo, en Go todo programa comienza su ejecución en el paquete main
- import: como lo dice su nombre importa un paquete que ya existe, en este caso estamos importando el paquete "fmt" que trae funciones para darle formato a las entradas y salidas.
- func: es la declaración de una función, en este caso es una funcion main() que posterior a la funcion init()<sup id="a7">[7](#f7)</sup> es la que sigue en su ejecución.
- fmt.Println: llama al metodo Println (homogolo al print de python o al System.Out.Println de Java) que imprime el contenido en la salida estandar del sistema (stdout) 

Para ejecutar este codigo se puede hacer de 2 formas

- Ejecutar sin compilación

  ```
    $ go run holamundo.go
    Hola Mundo
  ```

- Compilar y posterior ejecutar el binario

  ```
    $ go build holamundo.go
    $ ls
    holamundo  holamundo.go
    $ sh holamundo
    Hola Mundo
  ```

Con esto ya tenemos nuestro primer programa en Go, les dejo un [link](https://play.golang.org/p/Ws2MAOgom1C) para que puedan practicar online si gustan.

## Sintaxis

### Tour de Sintaxis

Golang tiene una página web donde puedes hacer un pequeño tour donde te mostraran la sintaxis y lo mas básico de este lenguaje de programación.

https://go-tour-es.appspot.com/#1

## Editores de Texto e IDE de Desarrollo Recomendados.

Aca mas que nada dare unos cuantos link a Editores de Texto o IDE que recomiendo para programar en GO

- [Visual Studio Code](https://code.visualstudio.com): Este editor de texto tiene un Pluggin de GO bastante potente y tiene una buena integración con GIT por lo que simplifica bastante las cosas.
- [Goland](https://www.jetbrains.com/go/): Diria que es a la fecha el IDE mas potente que tenemos disponible para GO, su unico pero es que es pagado pero siendo estudiante puedes obtar a una licencia de 1 año.
- [Atom](https://atom.io/): Al igual que Visual Studio Code, Atom tiene un [pluggin](https://atom.io/packages/go-plus) bastante bueno para GO por lo que ayuda un poco con su sintaxis
- [Vim](https://github.com/fatih/vim-go): Para los fanaticos de la terminal existe un pluggin de Vim que tambien funciona bastante bien con el soporte del lenguaje.

## Link de Referencia

- [Documentación Oficial](https://golang.org/doc/)
- [Lista de Framework, Librerias y Software](https://github.com/avelino/awesome-go)
- [Artículos](https://github.com/golang/go/wiki/Articles)

---
### Notas a Pie de Página

<b id="f1">1</b> Hace referencia a que todas las validaciones se realizan en tiempo de compilación. Un ejemplo seria una variable que se declara como tipo entero esta al validarse su tipificación en el proceso de compilación no podra cambiar su tipo durante viva el programa como se puede hacer en algunos lenguajes que tienen una tipificación dinamica.[↩](#a1)

<b id="f2">2</b> En Go no es obligación declarar los tipos de variables, si no se realiza implicitamente esta declaración el **Duck Test** escrito por el poeta  [James Whitcomb Riley](https://en.wikipedia.org/wiki/James_Whitcomb_Riley) deberia poder definir que tipo de variable es, este test dice lo siguiente  ```"Si camina como un pato, nada como un pato y hace "quack", podemos tratarlo como un pato"``` de esta forma el compilador podra saber que tipo de variable es debido a los valores que tiene asignados.[↩](#a2)

<b id="f3">3</b> La concurrencia en Go esta basada en los [Procesos Secuenciales de Comunicación de Hoare](https://en.wikipedia.org/wiki/Communicating_sequential_processes), la idea seria evitar la sincronización en memoria de los multiples hilos en ejecución y en lugar a esto usar canales para evitar contención. Ahora en Go existe algo llamando **Goroutine** que es una tarea que se ejecuta de forma independiente de otras (similar a un hilo) y estos para comunicarse utilizan canales, lo que seria una implementación a lo que propone Hoare[↩](#a3)

<b id="f4">4</b> Este tema es complejo es mas en la misma [página](https://golang.org/doc/faq#Is_Go_an_object-oriented_language) del lenguaje responden un si y no. Si lo simplificamos en Go tenemos Clases, Objetos, Metodos pero no existe Herencia ni Polimorfismo por lo que podriamos decir que si bien cumple cierta parte de este paradigma no lo aplica al 100%.[↩](#a4)

<b id="f5">5</b> Es un paradigma de programación
Son aquellos lenguajes donde las variables no tienen estado(las variables no tienen cambios de estado durante el ciclo de ejecución de un problema ,por lo que son inmutables), estos lenguajes se caracterizan porque se escriben expreciones que se evaluacan como funciones y no existen las estructuras ciclicas como ```for, while, do-while``` ya que se procesa todo utilizando [recursividad](https://en.wikipedia.org/wiki/Recursive_definition) (si como las matemáticas :trollface:). Aca va un pequeño [ejemplo](https://play.golang.org/p/SMvab7uOSxx) de Sumas y Multiplicaciones[↩](#a5)

<b id="f6">6</b> Revisar el siguiente link para la configuración de variables de entorno https://github.com/golang/go/wiki/SettingGOPATH.   [↩](#a6)

<b id="f7">7</b> Un ejemplo del orden de ejecución de funciones seria el [siguiente](https://play.golang.org/p/heKgYFrgl40)[↩](#a7)