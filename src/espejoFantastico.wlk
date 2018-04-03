object espejoFantastico {
	method puntosDeLucha(_capo){
		var puntos = 0
		_capo.artefactos().remove(self)
		if (_capo.artefactos().size() >= 1)
			puntos = _capo.mejorArtefacto().puntosDeLucha(_capo)
			_capo.artefactos().add(self)
		return puntos
	}
	method puntosDeHechiceria(_capo){		
		var puntos = 0
		_capo.artefactos().remove(self)
		if (_capo.artefactos().size() >= 1)
			puntos = _capo.mejorArtefacto().puntosDeHechiceria(_capo)	
			_capo.artefactos().add(self)
		return puntos
	}
}