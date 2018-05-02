object espadaDelDestino{
	method puntosDeLucha(_capo) = 3
	method puntosDeHechiceria(_capo) = 0
	method efecto(_capo){
		_capo.obtenerArtefacto(self)
	}
	
}

object libroDeHechizos{
	method puntosDeLucha(_capo) = 0
	method puntosDeHechiceria(_capo) = _capo.baseDeHechiceria()
	method efecto(_capo){
		_capo.obtenerArtefacto(self)
	}
}

object collarDivino{
	method puntosDeLucha(_capo) = 1
	method puntosDeHechiceria(_capo) = 1
	method efecto(_capo){
		_capo.obtenerArtefacto(self)
	}
}

object espejoFantastico {
	method artefactosSinMi(capo){
		var artefactos = capo.artefactos().copy()
		artefactos.remove(self)
		return artefactos
	}	
	method puntosDeLucha(capo){
		var artefactos = self.artefactosSinMi(capo)
		return if (!artefactos.isEmpty())	
			capo.mejorArtefacto(artefactos).puntosDeLucha(capo) else 0
	}
	method puntosDeHechiceria(capo){		
		var artefactos = self.artefactosSinMi(capo)
		return if (!artefactos.isEmpty())	
			capo.mejorArtefacto(artefactos).puntosDeHechiceria(capo) else 0
	}
	
	method efecto(_capo){
		_capo.obtenerArtefacto(self)
	}
}