object bandoSur {
	var unidadesOro=0
	var reservaMateriales=0
	
	method unidadesOro() = unidadesOro
	
	method unidadesOro(unidades) { unidadesOro += unidades }
	
	method reservaMateriales() = reservaMateriales
	
	method reservaMateriales(unidades) { reservaMateriales += unidades }
}

class CofrecitoOro {
	
	var unidadesDeOro = 100
	
	method efecto(_capo){
		_capo.bando().unidadesOro(unidadesDeOro)	
	}	
	
	method puntosDeLucha(_capo) = 0
	
	method puntosDeHechiceria(_capo) = 0
}

class CumuloCarbon {
	
	method efecto(_capo){
		_capo.bando().reservaMateriales(50)
	}
	
	method puntosDeLucha(_capo) = 0
	
	method puntosDeHechiceria(_capo) = 0
}

class ViejoSabio {
	var puntosDeHechiceria = 1
	
	method efecto(_capo){}
	
	method puntosDeLucha(_capo) = ayudanteViejoSabio.puntosDeLucha()
	
	method puntosDeHechiceria(_capo) = puntosDeHechiceria
}

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