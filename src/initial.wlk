import capo.*
import armaduras.*
import artefactos.*
import elementos.*
import util.*

object bandos{
	const property bandoSur = new Bando(unidadesOro=100,reservaMateriales=50)
 	const property bandoNorte =new Bando(unidadesOro=200, reservaMateriales=200)
}
object capos{
	const property rolando=new Capo(
		artefactos = #{}, 
		baseDeLucha = 3, 
		baseDeHechiceria = 1, 
		bando = bandos.bandoSur(),
		imagen = "rolando.png",
		posicion= game.at(1,2))
		
	const property caterina=new Capo(
		artefactos = #{espadaDelDestino}, 
		baseDeLucha = 2, 
		baseDeHechiceria = 1, 
		bando = bandos.bandoSur(),
		imagen = "caterina.png",
		posicion = util.posicionRandom())
		
	const property archibaldo=new Capo(
		artefactos = #{collarDivino, espejoFantastico}, 
		baseDeLucha = 3, 
		baseDeHechiceria = 3, 
		bando = bandos.bandoNorte(),
		imagen = "archibaldo.png",
		posicion = util.posicionRandom()
		)
}
object neblina{
	const property neblinaUno = new Neblina(posicion = util.posicionRandom())
	const property neblinaDos = new Neblina(posicion = util.posicionRandom())
}






