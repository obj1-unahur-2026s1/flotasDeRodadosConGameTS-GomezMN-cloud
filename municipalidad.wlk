import colores.*
import mecanicaEInteriores.*
class Dependencia {
    const property empleados
    const flotaActual = []

    method agregarFlota(rodado) = flotaActual.add(rodado)
    method quitarDeFlota(rodado) = flotaActual.remove(rodado)
    method pesoTotalFlota() = flotaActual.sum({f => f.peso()})
    method estaBienEquipada() = flotaActual.size() > 3 and flotaActual.all({f => f.velocidadMax() >= 100})
    method capacidadTotalEnColor(color) = flotaActual.filter({f => f.color() == color}).sum({s => s.capacidad()})
    method colorDelRodadoMasRapido() = flotaActual.max({f => f.velocidadMax()}).color()
    method capacidadFaltante() = empleados - flotaActual.sum({s => s.capacidad()}) 
    method esGrande() = empleados >= 40 && flotaActual.size() >= 5
}

class Pedidos {
    const property distanciaKM
    const property tiempoMaxHS
    const property cantidadDePasajeros
    const property coloresIncompatibles 

    method velocidadRequerida() = distanciaKM / tiempoMaxHS
    method puedeSatisfacerUnPedido(auto) {
        auto.velocidadMax() > self.velocidadRequerida() + 10 && auto.capacidad() >= cantidadDePasajeros && auto.color() !=  coloresIncompatibles
    }
}