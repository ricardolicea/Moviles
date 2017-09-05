//: Playground - noun: a place where people can play
/*Autor: Ricardo Licea Mata
 Matriculo: A01280892
 Fecha: 21/08/2017 Eclipse Day
 Actividad: Conociendo Swift
 */

import UIKit

var str = "Hello, playground"

print("1 ------------------------------------------")
// 1. Escribe una función que reciba como parámetro un número (entre 1 y 10) y
// muestre la tabla de multiplicar correspondiente
// IMPORTANTE: Usa el estatuto for
// Llama a la función con al menos 2 valores diferentes

func tablasDeMultiplicar(iNum: Int){
    for iCont in 0...10{
        print("\(iNum) x \(iCont)")
    }
}

tablasDeMultiplicar(iNum: 5)




print("2 ------------------------------------------")
// 2. Haz una función que muestre los valores entre a y b avanzando de 2 en 2, usa while
// Llama a la función
func valoresEntreAyB(iA: Int, iB: Int){
    var num = iA
    while num <= iB {
        print("\(num)")
       num = num + 2
    }
}

valoresEntreAyB(iA: 5, iB: 20)



print("3 ------------------------------------------")
// 3. Escribe un estatuto switch que muestre valores numéricos de acuerdo a la siguiente tabla de claves
// A, F  - 25
// B, K  - 32
// D, E, G  - 40
// crea una variable con alguno de los valores para probar su funcionamiento
func valorPorLetra (letra: Character){
    
    switch letra{
        case "A", "F":
        print("\(letra) - 25")
        case "B", "K":
        print("\(letra) - 32")
        case "D", "E", "G":
        print("\(letra) - 40")
    default: break
    }
}

valorPorLetra(letra: "A")
valorPorLetra(letra: "K")
valorPorLetra(letra: "E")
valorPorLetra(letra: "F")
valorPorLetra(letra: "B")
valorPorLetra(letra: "D")
valorPorLetra(letra: "G")

print("4 ------------------------------------------")
// 4. Crea un arreglo que contenga varios nombres de persona
// Luego haz un ciclo for para mostrar los nombres de uno por uno en la pantalla

var sArreglo = ["Andres", "Gabriel", "Rafa", "Riky"]
for iCont in 0 ... sArreglo.count-1{
    print("\(sArreglo[iCont])")
}


// 5. Agrega un nombre al arreglo de nombres
print("5-------------------------------------------")
sArreglo.append("Oscar")

for iCont in 0 ... sArreglo.count-1{
    print("\(sArreglo[iCont])")
}



print("6 ------------------------------------------")
// 6. Muestra el nombre que se encuentra en la posición (x) – elige un valor para x
// Usa un mensaje "En la posicion 2 se encuentra ...."

print("En la posición numero 4(lugar 5), se encuentra el nombre: \(sArreglo[4])")



print("7 ------------------------------------------")
// 7. Declara un arreglo vacío de valores enteros
// Haz un ciclo para agregar al arreglo vacío algunos valores
// Muestra el contenido del arreglo usando un print con el nombre del arreglo
var iArreglo: [Int] = []
for iCont in 0 ... 9 {
    iArreglo.append(iCont*3)
}

print("El arreglo iArreglo tiene los valores: ")
for iCont in 0 ... iArreglo.count-1 {
    print("\(iArreglo[iCont])")
}



print("8 ------------------------------------------")
// 8. Escribe una función que recibe un arreglo de números enteros y regresa como valor
// de retorno el valor mayor y el promedio de los valores del arreglo
// Crea un arreglo de números y llama a la función; después muestra los valores que regresó
func iNumeroMayor(iArreglo:[Int]){
    var iNumeroMay = 0
    var dProm = 0
    for iCont in 0 ... iArreglo.count-1{
        if iNumeroMay < iArreglo[iCont] {
            iNumeroMay = iArreglo[iCont]
        }
        dProm += iArreglo[iCont]
        }
        dProm/iArreglo.count
    print("El valor mayor del arreglo es: \(iNumeroMay)")
    print("El promedio del arreglo es: \(dProm)")
    
    
}
iNumeroMayor(iArreglo: iArreglo)


print("9 ------------------------------------------")
// 9. Escribe la clase Artículo con los atributos ident, descrip, precio
// que tenga un método de inicialización con valores default,
// un método de inicialización con parámetros y
// un método aumentaPrecio que reciba el porcentaje a aumentar como valor entero
// y regrese el nuevo precio sin modificar el precio del objeto
class Articulo{
    var ident: Int
    var descrip: String
    var precio: Double
    
    init(){
        ident = 0
        descrip = " "
        precio = 0.0
    }
    init(ident: Int, descrip: String, precio: Double){
        self.ident = ident
        self.descrip = descrip
        self.precio = precio
        
    }
    
    func  aumentaPrecio(porcAumento: Double) -> Double{
        var dNuevoPrecio = (1 + porcAumento/100) * precio
        return dNuevoPrecio
    }
    
}
var articulo = Articulo(ident: 1, descrip: "Articulo 1", precio: 95)
print("El nuevo articulo tiene ID de \(articulo.ident), decripcion de \(articulo.descrip), y cuesta \(articulo.precio)")
print("Se aumento el precio en un 30 porciento")
print("El nuevo precio es: \(articulo.aumentaPrecio(porcAumento: 30))")



// 10. Crea un objeto de tipo Artículo usando el constructor default y luego asigna un
// valor a cada uno de los atributos de ese objeto
print("10-------------------------------------------")
var articulo2 = Articulo()
articulo2.ident = 2
articulo2.descrip = "Articulo 2"
articulo2.precio = 100

print("El nuevo articulo tiene ID de \(articulo2.ident), decripcion de \(articulo2.descrip), y cuesta \(articulo2.precio)")
// 11. Crea un artículo más usando el constructor con parámetros
print("11 ------------------------------------------")
var articulo3 = Articulo(ident:3, descrip: "Articulo 3", precio: 15877.34)

print("El nuevo articulo tiene ID de \(articulo3.ident), decripcion de \(articulo3.descrip), y cuesta \(articulo3.precio)")


// 12. Crea un arreglo que contenga los artículos creados en los 2 puntos anteriores
// Usa un ciclo para mostrar (usando print) mensajes con los 3 datos de cada uno
// de los artículos de la lista
print("12 ------------------------------------------")
var arreglo = [articulo2, articulo3]
for iCont in 0 ... arreglo.count-1{
    print("El articulo tiene ID de \(arreglo[iCont].ident), descripción de \"\(arreglo[iCont].descrip)\", y cuesta \(arreglo[iCont].precio)")
}



// 13. Crea un artículo más usando cualquiera de los 2 constructores
// Agrega el artículo a la posición inicial del arreglo

print("13-------------------------------------------")
var articulo4 = Articulo(ident: 4, descrip: "Articulo 4", precio: 680)
arreglo.insert(articulo4, at: 0)
for iCont in 0 ... arreglo.count-1{
    print("El articulo tiene ID de \(arreglo[iCont].ident), descripción de \"\(arreglo[iCont].descrip)\", y cuesta \(arreglo[iCont].precio)")
}


// 14. Crea un artículo más usando cualquiera de los 2 constructores
// Agrega el artículo al final del arreglo de objetos
print("14-------------------------------------------")
var articulo5 = Articulo(ident: 5, descrip: "Articulo 5", precio: 745)
arreglo.append(articulo5)
for iCont in 0 ... arreglo.count-1{
    print("El articulo tiene ID de \(arreglo[iCont].ident), descripción de \"\(arreglo[iCont].descrip)\", y cuesta \(arreglo[iCont].precio)")
}


print("15 ------------------------------------------")
// 15. Muestra de nuevo el contenido del arreglo de objetos
for iCont in 0 ... arreglo.count-1{
    print("El articulo tiene ID de \(arreglo[iCont].ident), descripción de \"\(arreglo[iCont].descrip)\", y cuesta \(arreglo[iCont].precio)")
}
