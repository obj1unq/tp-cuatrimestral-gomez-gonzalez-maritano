import capo.*

class Armadura{
	var property refuerzo
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha()+self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria()+self.puntosDeHechiceria(_capo))
	}
	
	method puntosDeLucha(_capo) = 2 + refuerzo.puntosDeLucha(_capo) 
	
	method puntosDeHechiceria(_capo) = refuerzo.puntosDeHechiceria(_capo)	
}

object bendicion{
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha()+self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria()+self.puntosDeHechiceria(_capo))
	}
	
	method puntosDeLucha(_capo) = 0
	
	method puntosDeHechiceria(_capo) = 1	
}

object cotaDeMalla{
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha()+self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria()+self.puntosDeHechiceria(_capo))
	}
	
	method puntosDeLucha(_capo) = 1
	
	method puntosDeHechiceria(_capo) = 0
}

object hechizo{
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha()+self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria()+self.puntosDeHechiceria(_capo))
	}
	
	method puntosDeLucha(_capo) = 0
	
	method puntosDeHechiceria(_capo) =	if (_capo.baseDeHechiceria() > 3) 2	else 0	
}

object ninguna{
	
	method efecto(_capo){
		_capo.baseDeLucha(_capo.baseDeLucha()+self.puntosDeLucha(_capo))
		_capo.baseDeHechiceria(_capo.baseDeHechiceria()+self.puntosDeHechiceria(_capo))
	}
	
	method puntosDeLucha(_capo) = 0
	
	method puntosDeHechiceria(_capo) = 0	
}