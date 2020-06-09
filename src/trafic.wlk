import rodado.*

object trafic {
	var interiordefinido 
	var motordefinido 
	
	method interior() {return interiordefinido}
	method  motor() {return motordefinido}
	method capacidad() {return self.interior().capacidad()}
	method velocidadMax(){return self.motor().velocidad()}
	method peso() {return 4000 + self.motor().peso() +self.interior().peso()}
	method color(){return blanco}
	
	method definirInterior(interior){
		interiordefinido = interior
	}
	method definirMotor(motor){
		motordefinido = motor
	}
	
}
object  interiorComodo{
	method capacidad(){
		return 5
	}
	method peso(){
		return 700
	}
}
object interiorPopular{
	method capacidad(){
		return 12
	}
	method peso(){
		return 1000
	}
}
object motorPulenta {
	 method peso(){
	 	return 800
	 }
	 method velocidad(){
	 	return 130
	 }
}
object motorBataton {
	
	 method peso(){
	 	return 500
	 }
	 method velocidad(){
	 	return 80
	 }
}


