import elementos.*
import artefactos.*
//PUNTO 1 Y 2 ENTEGA 2----------------------
class Capo{
	var property artefactos = #{}
	var property baseDeLucha = null
	var property baseDeHechiceria = null
	const property bando = null
	var property estaVivo = true
	var property imagen = 'jugador.png'
	var property posicion = null 
	
	method encontroCosa(_cosa){
		_cosa.efecto(self)
		
	}
	
	method efecto(_capo){
		if(_capo.bando()==self.bando())
			self.regalarArtefactos(_capo)
		else
			self.pelearCon(_capo)
		
	}
	
	method regalarArtefactos(_capo){
		_capo.artefactos(_capo.artefactos()+self.artefactos())
		self.artefactos().clear()
	}
	
	method pelearCon(_capo){
		if(_capo.puntosDeLucha()+_capo.puntosDeHechiceria()
			>self.puntosDeLucha()+self.puntosDeHechiceria()
		)
			self.estaVivo(false)
		else
			_capo.estaVivo(false)
			game.removeVisual(self)
	}
	
	method incrementarBaseLucha() { baseDeLucha++ }
	
	method incrementarBaseHechiceria() { baseDeHechiceria++ }
	
	method obtenerArtefacto(unArtefacto){
		artefactos.add(unArtefacto)
	}
	
	method puntosDeLucha(){
		return baseDeLucha + artefactos.sum({artefacto => artefacto.puntosDeLucha(self)})
	}
	
	method puntosDeHechiceria(){
		return baseDeHechiceria + artefactos.sum({artefacto => artefacto.puntosDeHechiceria(self)})
	}
	
	method mejorArtefacto(_artefactos){
		return _artefactos.max({_artefacto => _artefacto.puntosDeLucha(self) + _artefacto.puntosDeHechiceria(self)})
	}
	
	method move(nuevaPosicion){
		self.posicion(nuevaPosicion)
	}
}


//-----------------------------------------
object bandos{
	const property bandoSur = new Bando(unidadesOro=100,reservaMateriales=50)
 	const property bandoNorte =new Bando(unidadesOro=200, reservaMateriales=200)
}
object capos{

	const property rolando=new Capo(artefactos = #{}, 
									baseDeLucha = 3, 
									baseDeHechiceria = 1, 
									bando = bandos.bandoSur(),
									posicion=game.at(5,5))
	const property caterina=new Capo(artefactos = #{espadaDelDestino}, 
										baseDeLucha = 2, 
										baseDeHechiceria = 1, 
										bando = bandos.bandoSur(),
										posicion=game.at(3,2)
										)
	const property archibaldo=new Capo(artefactos = #{collarDivino, espejoFantastico}, 
										baseDeLucha = 3, 
										baseDeHechiceria = 3, 
										bando = bandos.bandoNorte(),
										posicion=game.at(1,3))
}