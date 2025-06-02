import nave.*


object neo {
  var energia = 100
  
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
  var vitalidad = 8
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