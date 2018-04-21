import bandoSur.*
import espejoFantastico.*
object rolando{
	var property artefactos = #{}
	// ATENCION: No abusar de las properties.
	var property baseDeLucha = 3
	var property baseDeHechiceria = 1

	// IDEA: No aporta nada el prefijo "mi" al bando. Todas las variables son "del capo", 
	// con ese criterio todas deberían llamarse misArtefactos, miBaseDeLucha, etc.	
	var property miBando=bandoSur
	
	method encontroElemnto(_elemento){
		_elemento.efecto(self)
	}

	method incrementarBaseLucha() { baseDeLucha++ }
	method incrementarBaseHechiceria() { baseDeHechiceria++ }
	method obtenerArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	method valorDeLucha(){
		// IDEA: ¿Es necesario usar el _ para cada variable global?
		return baseDeLucha + artefactos.sum({_artefacto => _artefacto.puntosDeLucha(self)})
	}
	method valorDeHechiceria(){
		// IDEA: ¿No representan lo mismo valorDeHechiceria y puntosDeHechiceria?
		return baseDeHechiceria + artefactos.sum({_artefacto => _artefacto.puntosDeHechiceria(self)})
	}
	method mejorArtefacto(){
		return artefactos.max({_artefacto => _artefacto.puntosDeLucha(self) + _artefacto.puntosDeHechiceria(self)})
	}
}

object espadaDelDestino{
	method puntosDeLucha(_capo) = 3
	method puntosDeHechiceria(_capo) = 0
	
}
object libroDeHechizos{
	method puntosDeLucha(_capo) = 0
	method puntosDeHechiceria(_capo) = _capo.baseDeHechiceria()
}
object collarDivino{
	method puntosDeLucha(_capo) = 1
	method puntosDeHechiceria(_capo) = 1
}