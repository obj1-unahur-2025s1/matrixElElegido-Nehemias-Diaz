import matrix.*

object nave {
  const pasajeros = [neo, morfeo, trinity]
  
  method bajarDeLaNaveA(unPasajero) {
    pasajeros.remove(unPasajero)
  }
  
  method subirALaNaveA(unPasajero) {
    pasajeros.add(unPasajero)
  }
  
  method cuantosPasajerosHay() = pasajeros.size()
  
  method pasajeroDeMayorVitalidad() = pasajeros.max({ p => p.vitalidad() })
  
  method estaEquilibradaEnVitalidad() {
    const vitalidades = pasajeros.map({ p => p.vitalidad() })
    const minVitalidad = vitalidades.min()
    const maxVitalidad = vitalidades.max()
    return maxVitalidad <= (minVitalidad * 2)
  }
  
  method estaElElegido() = pasajeros.any({ p => p.esElElegido() })
  
  method chocar() {
    pasajeros.forEach({ p => p.saltar() })
    pasajeros.clear()
  }
  
  method acelerar() {
    pasajeros.filter({ p => not p.esElElegido() }).forEach({ p => p.saltar() })
  }
}