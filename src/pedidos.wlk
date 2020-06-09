import trafic.*
import rodado.*
import colores.*
class Pedido {
	var conjuntoDeColoresIncompatibles = []
	var property distanciaARecorrer
	var property tiempoMax
	var property cantidadDePasajeros
		
	method agregarColorIncompatible(color){
		conjuntoDeColoresIncompatibles.add(color)
	}	
	method esColorIncompatible(color){
		conjuntoDeColoresIncompatibles.contains(color)
	}
	method velocidadRequerida(){
	 return	self.distanciaARecorrer() / self.tiempoMax()
	}
	method puedeSatisfacerElPedido(auto){
		return (auto.velocidadMax()- self.velocidadRequerida()>=10) and  auto.capacidad() >= cantidadDePasajeros and  not  conjuntoDeColoresIncompatibles.any({cosa => cosa == auto.color() })  
	}
	method acelerar(){
		self.tiempoMax(self.tiempoMax()-1)
	}
	method relajar(){
		self.tiempoMax(self.tiempoMax()+1)
	}
	
}
