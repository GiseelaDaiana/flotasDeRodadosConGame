import wollok.game.*
class Pared {
 var property resistencia
 var property position = game.at(5,5)
 var property image 
 
 method image(){
 	if (resistencia  > 1){
 		return "paerdpower.png"
 	}else{
 		return "pared0.png"
 	}
 }

 method perderResistencia(){
 	resistencia = resistencia-1
 }
	
}
/*esto va en game pero no funciono. */
/*game.whenCollideDo(auto,{pared5.perderResistencia()} )*/
	