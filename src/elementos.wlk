//PUNTO 1 ENTEGA 2----------------------
class Bando {
	var unidadesOro=null
	var reservaMateriales=null
	
	method unidadesOro() = unidadesOro
	
	method unidadesOro(unidades) { unidadesOro += unidades }
	
	method reservaMateriales() = reservaMateriales
	
	method reservaMateriales(unidades) { reservaMateriales += unidades }
}

//--------------------------------------
//PUNTO 2 ENTEGA 2----------------------
class CofrecitoOro {
	method efecto(_capo){
		_capo.bando().unidadesOro(100)
	}	
	
}

class CumuloCarbon {
	method efecto(_capo){
		_capo.bando().reservaMateriales(50)
	
	}
}

class ViejoSabio {
	var puntosDeHechiceria = 1
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha() + self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria() + self.puntosDeHechiceria(_capo))	
	}
	
	method puntosDeLucha(_capo) = ayudanteViejoSabio.puntosDeLucha()
	
	method puntosDeHechiceria(_capo) = puntosDeHechiceria
}
//----------------------------------------
object ayudanteViejoSabio{
	var property puntosDeLucha = 1
	
	/*	var puntosDelucha = 1 //getter
	 *  
	 * method puntosDeLucha(nuevoValor){ puntosDeLucha = nuevoValor } //setter
	 * 
	 * se resume a:
	 * var property puntosDeLucha = 1 // getter & setter
	* */
}