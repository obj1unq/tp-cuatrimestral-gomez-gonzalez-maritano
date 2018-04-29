import elementos.*
import artefactos.*

object rolando{
	var property artefactos = #{}
	var property baseDeLucha = 3
	var property baseDeHechiceria = 1
	var property bando = bandoSur
	
	method encontroElemento(_elemento){
		_elemento.efecto(self)
		baseDeLucha += _elemento.puntosDeLucha(self)
		baseDeHechiceria += _elemento.puntosDeHechiceria(self)
	}

	method incrementarBaseLucha() { baseDeLucha++ }
	
	method incrementarBaseHechiceria() { baseDeHechiceria++ }
	
	method obtenerArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	
	method puntosDeLucha(){
		return baseDeLucha + artefactos.sum({artefacto => artefacto.puntosDeLucha(self)})
	}
	
	method puntosDeHechiceria(){
		return baseDeHechiceria + artefactos.sum({artefacto => artefacto.puntosDeHechiceria(self)})
	}
	
	method mejorArtefacto(_artefactos){
		return _artefactos.max({_artefacto => _artefacto.puntosDeLucha(self) + _artefacto.puntosDeHechiceria(self)})
	}
}

