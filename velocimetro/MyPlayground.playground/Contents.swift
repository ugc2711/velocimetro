//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
enum Velocidades:Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    init(velocidadInicial:Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad:Velocidades
    init(){
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
    
    
    
    func cambioDeVelocidad() -> ( actual : Int, velocidadEnCadena: String){
        var leyenda = ""
        let actual = velocidad.rawValue
        switch velocidad {
        case .Apagado:
            velocidad = .VelocidadBaja
            leyenda = "Apagado"
        case .VelocidadBaja:
            velocidad = .VelocidadMedia
            leyenda = "Velocidad Baja"
        case .VelocidadMedia:
            velocidad = .VelocidadAlta
            leyenda = "Velocidad Media"
        case .VelocidadAlta:
            velocidad = .Apagado
            leyenda = "Velocidad Alta"
        }
        return (actual, leyenda)
    }
    
}

let auto = Auto()
for i in 1...20 {
    let result = auto.cambioDeVelocidad()
    print("\(i). \(result.actual), \(result.velocidadEnCadena)")
}



