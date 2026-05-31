class Interior {
    const property capacidad = 3
    const property peso = 700
}
class Motor {
    const property potencia   
    const property velocidadMax  
    const property peso  
    const property conTurbo = false
    const property cajaManual = false
}
const motorPulenta = new Motor(potencia = 120, velocidadMax = 130, peso = 800)
const motorBataton = new Motor(potencia = 80, velocidadMax = 80, peso = 500)
const motorV1Peugeot = new Motor(potencia = 130, velocidadMax = 140, peso = 750, conTurbo = true, cajaManual = false)
const motorV2Peugeot = new Motor(potencia = 82, velocidadMax = 110, peso = 650, conTurbo = false, cajaManual = true)
const motorV3Peugeot = new Motor(potencia = 125, velocidadMax = 135, peso = 700)
const motorGeneric = new Motor(potencia = 60, velocidadMax = 100, peso = 560)

const interiorPopular = new Interior(capacidad = 12, peso = 1000)
const interiorComodo = new Interior(capacidad = 5, peso = 700)