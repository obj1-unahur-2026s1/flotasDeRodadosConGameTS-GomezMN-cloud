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

