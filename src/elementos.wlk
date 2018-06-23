//PUNTO 1 ENTEGA 2----------------------
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
	// puede existir el caso donde la neblina exista, pero sin cosas ocultas?
	const property cosasOcultas = [] 
	//PRE-CONDICION: NUNCA PUEDE ESTAR VACIA LA LISTA
	// Ahora la lista puede estar vacia
	method agregarCosasOcultas(_cosa){
		cosasOcultas.add(_cosa)
	}
	
	method efecto(_capo){
		// cosasOcultas.isEmpty ? nothing : => Puede ser una opcion 
		if(!cosasOcultas.isEmpty())cosasOcultas.forEach({_cosa => _capo.encontroCosa(_cosa)})
		game.removeVisual(self)
	}
}