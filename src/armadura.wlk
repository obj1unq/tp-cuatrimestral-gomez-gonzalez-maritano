// PUNTO 2.1
object armadura{
	var refuerzo
	
	method asignarRefuerzo(_refuerzo){
		refuerzo = _refuerzo
	}
	
	method puntosDeLucha(_capo) = 2 + refuerzo.puntosDeLucha(_capo) 
	
	method puntosDeHechiceria(_capo) = refuerzo.puntosDeHechiceria(_capo)	
}

// IDEA: Los refuerzos son objetos sencillos, tal vez sería más fácil tener una visión global
// de la idea si estuvieran todos juntos en el mismo archivo.
