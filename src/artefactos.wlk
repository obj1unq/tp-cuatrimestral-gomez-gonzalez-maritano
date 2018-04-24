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