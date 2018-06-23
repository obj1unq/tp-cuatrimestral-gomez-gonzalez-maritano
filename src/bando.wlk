class Bando {
	var unidadesOro=null
	var reservaMateriales=null
	
	method unidadesOro() = unidadesOro
	
	method unidadesOro(unidades) { unidadesOro += unidades }
	
	method reservaMateriales() = reservaMateriales
	
	method reservaMateriales(unidades) { reservaMateriales += unidades }
}

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