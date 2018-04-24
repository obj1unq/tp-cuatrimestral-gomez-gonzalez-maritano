object bandoSur {
	var unidadesOro=0
	var reservaMateriales=0
	
	method unidadesOro() = unidadesOro
	
	method unidadesOro(unidades) { unidadesOro += unidades }
	
	method reservaMateriales() = reservaMateriales
	
	method reservaMateriales(unidades) { reservaMateriales += unidades }
}

object cofrecitoOro {
	method efecto(_capo){
		_capo.bando().unidadesOro(100)	
	}	
}

object cumuloCarbon {
	method efecto(_capo){
		_capo.bando().reservaMateriales(50)
	}
}

object viejoSabio {
	method efecto(_capo){
		_capo.incrementarBaseLucha()
		_capo.incrementarBaseHechiceria()
	}
}