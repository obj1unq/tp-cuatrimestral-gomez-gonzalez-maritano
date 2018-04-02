object rolando{
	var artefactos = #{}
	var property baseDeLucha = 3
	var property baseDeHechiceria = 1
	
	method incrementarBaseLucha() { baseDeLucha++ }
	method incrementarBaseHechiceria() { baseDeHechiceria++ }
	method objeterArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	method valorDeLucha(){
		//test git
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