import bandoSur.*
object rolando{
	// inicializo variables
	var artefactos = #{}
	var property baseDeLucha = 3
	var property baseDeHechiceria = 1
	//PUTNO 3---------------------
	var property miBando=bandoSur
	
	method encontroElemnto(_elemento){
		_elemento.efecto(self)
	}
	//----------------------------
	method incrementarBaseLucha() { baseDeLucha++ }
	method incrementarBaseHechiceria() { baseDeHechiceria++ }
	method obtenerArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	method valorDeLucha(){
		
	}
	method valorDeHechiceria(){

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


