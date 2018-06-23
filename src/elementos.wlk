class ViejoSabio {
	var puntosDeHechiceria = 1
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha() + self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria() + self.puntosDeHechiceria(_capo))	
	}
	
	method puntosDeLucha(_capo) = ayudanteViejoSabio.puntosDeLucha()
	
	method puntosDeHechiceria(_capo) = puntosDeHechiceria
}

object ayudanteViejoSabio{
	var property puntosDeLucha = 1
}

class Neblina{
	const property posicion = null
	const property imagen = "neblina.png"
	const property cosasOcultas = [] 
	method agregarCosasOcultas(_cosa){
		cosasOcultas.add(_cosa)
	}
	
	method efecto(_capo){
		// cosasOcultas.isEmpty ? nothing : => Puede ser una opcion 
		if(!cosasOcultas.isEmpty())cosasOcultas.forEach({_cosa => _capo.encontroCosa(_cosa)})
		game.removeVisual(self)
	}
}