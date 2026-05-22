object paris {
    method recuerdo() = "llavero Torre Eifel"
    method permiteViaje(vehiculo) {
        vehiculo.tieneSuficienteCombustible()
    } 
}

object buenosAires {
	var presidenteTraeYerba = true 
	
	method recuerdo() {
		if (presidenteTraeYerba) {
			return "mate con yerba"
		} else {
			return "mate sin yerba"
		}
	}
    method permiteViaje(vehiculo) =
      vehiculo.esRapido()
    
}

object bagdad {
  
  var recuerdoActual = "bidon de petroleo"

  method recuerdo() = recuerdoActual
  method cambiarRecuerdo(nuevoRecuerdo) {
    recuerdoActual = nuevoRecuerdo
  }
  method permiteViaje(vehiculo) = true
}

object lasVegas {
    var lugarHomenajeado = paris 

    method cambiarHomenaje(nuevoLugar) {
      lugarHomenajeado = nuevoLugar
    }
    method recuerdo() = lugarHomenajeado.recuerdo() 
    method permiteViaje(vehiculo) = lugarHomenajeado.permiteViaje(vehiculo)
}



object alambriqueVeloz {
    var combustible = 100
    method tieneSuficienteCombustible (){
        combustible > 20
  }
    method esRapido() = true
}

object superChatarraEspecial {
    var munciones = 10
    var combustible = 100
    method tieneSuficienteCombustible() {
      combustible = (munciones * 10) > 20
    }
}

object antiguallaBlindada {
  var cantidadDeGangsters = 5
  method esRapido() = cantidadDeGangsters < 6

}

object superConvertible {
	var esDeportivo = true
	method transformar() {
		esDeportivo = not esDeportivo
	}
	method esRapido() = esDeportivo
	method tieneSuficienteCombustible() = true
}
/*
var esDeportivo = true
 Una ORDEN para que cambie su estado interno
	method transformar() {
		esDeportivo = not esDeportivo
	}
*/

