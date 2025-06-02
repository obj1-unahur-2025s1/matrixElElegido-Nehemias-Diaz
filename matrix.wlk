object neo {
  var energia = 0
  
  method saltar() {
    energia /= 2
  }
  
  method vitalidad() = energia * 0.1
  
  method esElElegido() = true
  
  method subirALaNave() {
    nave.subirALaNaveA(self)
  }
  
  method bajarDeLaNave() {
    nave.bajarDeLaNaveA(self)
  }
}

object morfeo {
  var vitalidad = 0
  var descansado = true
  
  method saltar() {
    descansado = not descansado
    vitalidad -= 1
  }
  
  method vitalidad() = vitalidad
  
  method esElElegido() = false
  
  method subirALaNave() {
    nave.subirALaNaveA(self)
  }
  
  method bajarDeLaNave() {
    nave.bajarDeLaNaveA(self)
  }
}

object trinity {
  method vitalidad() = 0
  
  method saltar() {
    
  }
  
  method esElElegido() = false
  
  method subirALaNave() {
    nave.subirALaNaveA(self)
  }
  
  method bajarDeLaNave() {
    nave.bajarDeLaNaveA(self)
  }
}

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
    return (maxVitalidad <= (minVitalidad * 2))
  }
  
  method estaElElegido() = pasajeros.any({ p => p.esElElegido() })
}