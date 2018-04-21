// PUNTO 2.1
import capo.*
object hechizo{
	method puntosDeLucha(_capo) = 0
	method puntosDeHechiceria(_capo) {
		// IDEA: también se puede usar el if como una expresión:
		// Así: return if (_capo.baseDeHechiceria() > 3) 2 else 0
		if (_capo.baseDeHechiceria() > 3) return 2
		else return 0
	}	
}