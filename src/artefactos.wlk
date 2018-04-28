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
}