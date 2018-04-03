// PUNTO 2.1
import capo.*
object hechizo{
	method puntosDeLucha(_capo) = 0
	method puntosDeHechiceria(_capo) {
		if (_capo.baseDeHechiceria() > 3) return 2
		else return 0
	}	
}