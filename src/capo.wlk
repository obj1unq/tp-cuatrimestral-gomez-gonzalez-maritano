import bandoSur.*

object rolando{
 	var property artefactos = #{}
 	var property baseDeLucha = 3
 	var property baseDeHechiceria = 1

 	method incrementarBaseLucha() { baseDeLucha++ }
 	method incrementarBaseHechiceria() { baseDeHechiceria++ }
 	method obtenerArtefacto(unArtefacto){
 		artefactos.add(unArtefacto)
 	}
 	method valorDeLucha(){
 		return baseDeLucha + artefactos.sum({_artefacto => _artefacto.puntosDeLucha(self)})
 	}
 	method valorDeHechiceria(){
 		return baseDeHechiceria + artefactos.sum({_artefacto => _artefacto.puntosDeHechiceria(self)})
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
