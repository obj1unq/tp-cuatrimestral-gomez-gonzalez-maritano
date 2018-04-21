object espejoFantastico {
	method puntosDeLucha(_capo){
		var puntos = 0
		// TODO Tenemos que pensar una solución que no modifique a la colección de artefactos del capo.
		_capo.artefactos().remove(self)
		if (_capo.artefactos().size() >= 1)
			puntos = _capo.mejorArtefacto().puntosDeLucha(_capo)
			// TODO La indentación de la línea siguiente está mal y confunde la lectura.
			_capo.artefactos().add(self)
		return puntos
	}
	method puntosDeHechiceria(_capo){		
		// IDEA: Creo que sería mejor evitar la inicialización de la variable con un valor que luego posiblemente no se use.
		var puntos = 0
		_capo.artefactos().remove(self)
		// Sería mejor preguntar por !empty, más descriptivo.
		if (_capo.artefactos().size() >= 1)
			puntos = _capo.mejorArtefacto().puntosDeHechiceria(_capo)	
			// TODO La indentación de la línea siguiente está mal y confunde la lectura.
			_capo.artefactos().add(self)
		return puntos
	}
}