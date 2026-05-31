import colores.*
import mecanicaEInteriores.*
class ChevroletCorsa {
    const property color 
    const motorActual = motorGeneric

    method capacidad() = 4
    method velocidadMax() = 150
    method peso() = 1300
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}
class RenaultKwid {
    const property tieneTanque = false
    const property color 
    const motorActual = motorGeneric

    method capacidad() {
        return 4 - if(tieneTanque) 1 else 0

    }
    method velocidadMax() {
        return 120 - if(tieneTanque) 10 else 0
    }
    method peso() {
        return 1200 + if(tieneTanque) 150 else 0
    }
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
    }
class Trafic {
    const property color
    const interiorActual = interiorComodo
    const motorActual = motorPulenta
    

    method interior() = interiorActual
    method capacidad() = interiorActual.capacidad()
    method velocidadMax() = motorActual.velocidadMax()
    method peso() = 4000 + interiorActual.peso() + motorActual.peso()
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}

class Peugeot208 {
    const motorActual = motorV1Peugeot
    const property color

    method capacidad() = 5
    method velocidadMax() = motorActual.velocidadMax()
    method peso() = 2800 + motorActual.peso()
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}
class Peugeot308 {
    const motorActual = motorV3Peugeot
    const property color

    method capacidad() = 5
    method velocidadMax() = motorActual.velocidadMax()
    method peso() = 2800 + motorActual.peso()
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}
class Especial {
    const motorActual = motorV1Peugeot
    const property color
    const property capacidad
    const property velocidadMax
    const property peso

    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}

