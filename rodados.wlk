import colores.*
import mecanicaEInteriores.*
class ChevroletCorsa {
    const color = null
    const motorActual = motorGeneric

    method capacidad() = 4
    method velocidadMax() = 150
    method color() = color
    method peso() = 1300
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}
class RenaultKwid {
    const tieneTanque = false
    const motorActual = motorGeneric
    method tieneTanque() = tieneTanque
    method capacidad() {
        return 4 - if(tieneTanque) 1 else 0

    }
    method velocidadMax() {
        return 120 - if(tieneTanque) 10 else 0
    }
    method peso() {
        return 1200 + if(tieneTanque) 150 else 0
    }
    method color() = azul
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
    }
class Trafic {
    const interiorActual = interiorComodo
    const motorActual = motorPulenta

    method interior() = interiorActual
    method capacidad() = interiorActual.capacidad()
    method velocidadMax() = motorActual.velocidadMax()
    method color() = blanco
    method peso() = 4000 + interiorActual.peso() + motorActual.peso()
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}

class Peugeot208 {
    const motorActual = motorV1Peugeot

    method capacidad() = 5
    method velocidadMax() = motorActual.velocidadMax()
    method color() = gris
    method peso() = 2800 + motorActual.peso()
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}
class Peugeot308 {
    const motorActual = motorV3Peugeot

    method capacidad() = 5
    method velocidadMax() = motorActual.velocidadMax()
    method color() = blanco
    method peso() = 2800 + motorActual.peso()
    method conTurbo() = motorActual.conTurbo()
    method cajaManual() = motorActual.cajaManual()
}

