import elementos.*
import artefactos.*
//PUNTO 1 Y 2 ENTEGA 2----------------------
class Capo{
	var property artefactos = #{}
	var property baseDeLucha = null
	var property baseDeHechiceria = null
	const property bando = null
	var property estaVivo = true
	var property imagen = null
	var property posicion = null 
	
	method encontroCosa(_cosa){
		_cosa.efecto(self)
		
	}
	
	method efecto(_capo){
		if(_capo.bando()==self.bando())
			self.regalarArtefactos(_capo)
		else
			self.pelearCon(_capo)
		
	}
	
	method regalarArtefacto(_capo,_artefacto){
		_capo.obtenerArtefacto(_artefacto)
		self.artefactos().remove(_artefacto)
	}
	
	method regalarArtefactos(_capo){
		self.artefactos().forEach({artefacto=>self.regalarArtefacto(_capo, artefacto)})

	}
	
	method pelearCon(_capo){
		if(_capo.puntosParaPelear() > self.puntosParaPelear())
			self.morir()
		else
			_capo.morir()
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
	
	method puntosParaPelear() = self.puntosDeLucha() + self.puntosDeHechiceria()
	
	method mejorArtefacto(_artefactos){
		return _artefactos.max({_artefacto => _artefacto.puntosDeLucha(self) + _artefacto.puntosDeHechiceria(self)})
	}
	
	method move(nuevaPosicion){
		self.posicion(nuevaPosicion)
	}
	
	method morir(){
		estaVivo = false
		game.removeVisual(self)
	}
}

//-----------------------------------------