import wollok.game.*
import colores.*
//Rodados

class ChevroletCorsa {
	 
	var property position = game.origin() 
	var property color 
	var property image 
	const property posiciones = #{game.origin()}
	
	
	/*Nuevo */
	
	method image() = color.image()
	
	/*op2 */
	/*method cambiarAAzul(){image = "autitoAzul.png"  color = azul }
	method cambiarARojo(){image = "autitorojo.png"  color = rojo }
	method cambiarAVerde(){image = "autitoVerde.png"  color = verde }*/
	
	method moveRight(){ self.position(self.position().right(1)) self.estoyEn() }
	method moveLeft(){ self.position(self.position().left(1)) self.estoyEn()}
	method moveUp(){ self.position(self.position().up(1)) self.estoyEn()}
	method moveDown(){ self.position(self.position().down(1)) self.estoyEn()}
	method moveTo(unaPosicion){ self.position(unaPosicion) }
	
	
	method estoyEn(){posiciones.add(self.position())}
	
	method  pasoPor(posicion) {return posiciones.contains(posicion)}
	method  pasoPorFila(numero) {posiciones.map({ pos=> pos.x()}).contains(numero)}
	method  recorrioFilas(lista_de_numeros) { }
	
	/*viejo */
	method capacidad(){return 4}
	method velocidadMax() {return 150}
	method peso(){return 1300}

}


class RenaultKwid {
	var tanqueAdicional = false 
	method capacidad(){
		if (tanqueAdicional) {
		    return 3
	    }else{
	    	return 4
	    }
		 
	}
	method velocidadMax() {
	    if (tanqueAdicional) {
		    return 120
	    }else{
	    	return 110
	    }
	}
	method color() { return azul}
	
	method peso(){
		var peso = 1200
		if (tanqueAdicional) {
		   peso = peso + 150
	    }
	    return (peso)
	}
	
	method combustible() { return "gas" }
	method tieneTanqueAdicional(){
		tanqueAdicional = true 
	}
}


class AutoEspecial {
	var property capacidad
	var property velocidadMax
	var property color 
	var property peso
    

}
