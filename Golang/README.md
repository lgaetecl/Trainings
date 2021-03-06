# Go o Golang
## Definición

Go o Golang es un lenguaje de programación compilado, concurrente, imperativo, estructurado, orientado a objetos y con un recolector de basura. Fue desarrollado por Google que dentro de sus desarrolladores iniciales están [Robert Griesemer](https://research.google.com/pubs/author96.html),  [Rob Pike](https://en.wikipedia.org/wiki/Rob_Pike) y  [Ken Thompson](https://en.wikipedia.org/wiki/Ken_Thompson).

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

El Go Gopher es la mascota icónica y una de las características que más distingue a este proyecto, personalmente llegue a este lenguaje por esta mascota :joy:. Fue creado por [Renee French](http://reneefrench.blogspot.cl) e hizo su aparición oficial en el 2009.

![img](https://qph.ec.quoracdn.net/main-qimg-716a9a93c3a28db4dead8e36d3046035)

## Aplicaciones que utilizan GO

### Kubernetes

Es un sistema de código libre para la automatización del despliegue, ajuste de escala y manejo de aplicaciones en contenedores.

 <img src="https://kubernetes.io/images/favicon.png" width="100">

### Drone

Drone es una herramienta de integración continua open source hecha en Go y Docker que nos permite correr tests, crear los artefactos de nuestro proyecto, notificar de los resultados, etc.

<img src="https://codeandoando.com/content/images/2016/02/droneio.png" width="200">

### InfluxDB

InfluxDB es una base de datos de series de tiempo abierto desarrollada por InfluxData.

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c6/Influxdb_logo.svg/1200px-Influxdb_logo.svg.png" width="200">

### Docker

Es un proyecto de código abierto que automatiza el despliegue de aplicaciones dentro de contenedores de software, proporcionando una capa adicional de abstracción y automatización de Virtualización a nivel de sistema operativo en Linux.

<img src="https://www.ubuntufree.com/wp-content/uploads/2016/01/docker-1-10-linux-container-engine-is-a-massive-release-first-rc-build-out-now.jpg" width="200">

## Instalación

El proceso de instalación de Go es bastante sencillo y consta de los siguientes pasos:

- Ir a la página https://golang.org/dl/ y descargar los binarios de instalación según su sistema operativo.
- Seguir las instrucciones de instalación del siguiente [link](https://golang.org/doc/install)

```
$ go version
go version go1.9.3 darwin/amd64
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
- fmt.Println: llama al método Println (homogolo al print de python o al System.Out.Println de Java) que imprime el contenido en la salida estándar del sistema (stdout) 

Para ejecutar este código se puede hacer de 2 formas

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

### Variables

Para declarar variables se usa la palabra reserva ```var```

**Declaración implicita y Duck Typing**

```go
package main

import "fmt"

func main() {
    var a, b int = 2, 4
    x, y, z:= true, false, "No es fácil estar borracho todo el tiempo. Si fuera fácil, todo el mundo lo haría"

    fmt.Println(a, b, x, y, z)
}
```
Salida
```
2 4 true false No es fácil estar borracho todo el tiempo. Si fuera fácil, todo el mundo lo haría
```
**Tipos Básicos**

En Go existen los siguientes tipos de variables:

```go
bool
string
int  int8  int16  int32  int64
uint uint8 uint16 uint32 uint64 uintptr
byte //alias para uint8
rune // alias para int32
float32 float64
complex64 complex128
```
**Constantes**

Son tipos de variables que tienen un valor constante en el tiempo y que no cambian, se declaran con la palabra reserva ```const```

```go
package main

import "fmt"

const Pi = 3.14159265358979323846

func main() {
  
    fmt.Println(Pi)
}
```
Salida
```
3.141592653589793
```
### Funciones

Una función puede tener cero o más argumentos de entradas y de salidas.

Por ejemplo tenemos la siguiente función, la que recibe como parametros de entrada 2 varibles del tipo int y esta retorna un entero.

```go
package main

import "fmt"

func sum(x int, y int) int {
    return x + y
}

func main() {
    fmt.Println(sum(10, 15))
}
```
Salida
```
25
```
Cabe destacar que en Go se debe declarar el tipo de la variable de retorno de la función, la que puede ser mas de una.

```go
package main

import "fmt"

func merge(x, y, z string) (string, string, string) {
    return x, y, z
}

func main() {
    a, b, c := merge("Winter", "is", "Coming")
    fmt.Println(a, b, c)
}
```
Salida
```
Winter is Coming
```
### For

Go tiene sólo un operando para definir los bucles, los bucles for.

```go
package main

import "fmt"

func main() {
    sum := 0
    for i := 0; i < 10; i++ {
        sum += i
    }
    fmt.Println(sum)
}
```
Salida
```
45
```

For puede trabajar como un "while" en Go

```go
package main

import "fmt"

func main() {
    sum := 1
    for sum < 10 {
        sum += sum
    }
    fmt.Println(sum)
}
```
Salida
```
16
```
Y en caso de necesitar un for infinito puedes hacerlo de esta forma (no lo recomiendo realizar)

```go
package main

import "fmt"

func main() {
    for {
        fmt.Println("Hold the Door")
    }
}
```
Salida
```
Hold the Door
Hold the Door
.
.
.
Hold the Door
Hold the Door
.
.
.
```

### If

La instrucción if es similar a la sentencia en C o Java, salvo que los paréntesis ( ) desaparecen (ni siquiera son opcionales) y las llaves { } son obligatorias.

```go
package main

import (
	"fmt"
)

func pair(x int) string {
	var r string
	if x == 0 {
		r = "Valor igual a 0"
	} else if x % 2 == 0{
		r = "Es Par"
	} else {
		r = "Es Impar"
	}
	return r

}

func main() {
	fmt.Println(pair(1))
}
```
Salida
```
Es Impar
```

## Estructuras

Una estructura (```struct```) es un registro de variables dentro de un mismo tipo.

```go
package main

import "fmt"

type Pokemon struct {
	Nombre        string
	Tipo          string
	Ataque        int
	Defensa       int
	Salud         int
	MegaEvolucion bool
}

func main() {
	p := Pokemon{"Charizard", "Fuego", 223, 176, 156, true}
	fmt.Println("Nombre:" + p.Nombre)
	fmt.Println("Tipo:" + p.Tipo)
	fmt.Printf("Ataque: %d\nDefensa: %d \nSalud: %d \n", p.Ataque, p.Defensa, p.Salud)
	if p.MegaEvolucion{
		fmt.Println("Cuenta con Mega Evolución")
	}
	
}
```
Salida
```
Nombre:Charizard
Tipo:Fuego
Ataque: 223
Defensa: 176 
Salud: 156 
Cuenta con Mega Evolución
```

### Tour de Sintaxis

Golang tiene una página web donde puedes hacer un pequeño tour donde te mostraran la sintaxis y lo más básico de este lenguaje de programación.

https://go-tour-es.appspot.com/#1

## Editores de Texto e IDE de Desarrollo Recomendados.

Acá más que nada dare unos cuantos links a Editores de Texto o IDE que recomiendo para programar en GO

- [Visual Studio Code](https://code.visualstudio.com): Este editor de texto tiene un Plugin de GO bastante potente y tiene una buena integración con GIT por lo que simplifica bastante las cosas.
- [Goland](https://www.jetbrains.com/go/): Diría que es a la fecha el IDE mas potente que tenemos disponible para GO, su único, pero es que es pagado, pero siendo estudiante puedes optar a una licencia de 1 año.
- [Atom](https://atom.io/): Al igual que Visual Studio Code, Atom tiene un [plugin](https://atom.io/packages/go-plus) bastante bueno para GO por lo que ayuda un poco con su sintaxis
- [Vim](https://github.com/fatih/vim-go): Para los fanáticos de la terminal existe un plugin de Vim que también funciona bastante bien con el soporte del lenguaje.

## Link de Referencia

- [Documentación Oficial](https://golang.org/doc/)
- [Lista de Framework, Librerias y Software](https://github.com/avelino/awesome-go)
- [Artículos](https://github.com/golang/go/wiki/Articles)
- [Errores Frecuentes](http://devs.cloudimmunity.com/gotchas-and-common-mistakes-in-go-golang/)

---
### Notas a Pie de Página

<b id="f1">1</b> Hace referencia a que todas las validaciones se realizan en tiempo de compilación. Un ejemplo sería una variable que se declara como tipo entero, la misma al validarse su tipificación en el proceso de compilación no podrá cambiar su tipo mientras viva el programa, a diferencia de otros lenguajes que tienen una tipificación dinámica. [↩](#a1)

<b id="f2">2</b> En Go no es obligación declarar los tipos de variables, si no se realiza implícitamente esta declaración el **Duck Test** escrito por el poeta  [James Whitcomb Riley](https://en.wikipedia.org/wiki/James_Whitcomb_Riley) debería poder definir qué tipo de variable es, este test dice lo siguiente  ```"Si camina como un pato, nada como un pato y hace "cua cua", podemos tratarlo como un pato"``` de esta forma el compilador podrá saber qué tipo de variable es debido a los valores que tiene asignados. [↩](#a2)

<b id="f3">3</b> La concurrencia en Go está basada en los [Procesos Secuenciales de Comunicación de Hoare](https://en.wikipedia.org/wiki/Communicating_sequential_processes), la idea sería evitar la sincronización en memoria de los múltiples hilos en ejecución y en lugar de esto usar canales para evitar contención. Ahora en Go existe algo llamando **Goroutine** que es una tarea que se ejecuta de forma independiente de otras (similar a un hilo) y estos para comunicarse utilizan canales, lo que sería una implementación a lo que propone Hoare. [↩](#a3)

<b id="f4">4</b> Este tema es complejo es más en la misma [página](https://golang.org/doc/faq#Is_Go_an_object-oriented_language) del lenguaje responden un sí y un no. Si lo simplificamos en Go tenemos Clases, Objetos, Métodos pero no existe Herencia ni Polimorfismo por lo que podríamos decir que si bien cumple cierta parte de este paradigma no lo aplica o cubre al 100%. [↩](#a4)

<b id="f5">5</b> Es un paradigma de programación, donde las variables no tienen estado(no tienen cambios de estado durante el ciclo de ejecución de un problema ,por lo que son inmutables), estos lenguajes se caracterizan porque se escriben expresiones que se evaluaban como funciones, si bien en go existen las estructuras ciclicas como ```for, while, do-while``` se debe priorizar el uso de la [recursividad](https://en.wikipedia.org/wiki/Recursive_definition) (si como las matemáticas :trollface:). Acá un pequeño [ejemplo](https://play.golang.org/p/SMvab7uOSxx) de Sumas y Multiplicaciones. [↩](#a5)

<b id="f6">6</b> Revisar el siguiente [link](https://github.com/golang/go/wiki/SettingGOPATH) para la configuración de variables de entorno. [↩](#a6)

<b id="f7">7</b> Un ejemplo del orden de ejecución de funciones seria el [siguiente](https://play.golang.org/p/heKgYFrgl40). [↩](#a7)