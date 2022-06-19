import personajes.*


class UserException inherits Exception{}

class Maldades {
	const property minionsAsignados=[]
	
	method HacerMaldad() {
		minions.filter()
	}
	
	method afectarCiudad() {
		if (minionsAsignados.size() == 0) { throw new UserException (message = "la maldad no tuvo ningún minion asignado")}
	}
	
	method realizarCon(minion) 
	method esApto(minion)
}

class Robar inherits Maldades {
	var property objetivo
	
	
	override 
	method realizarEn(ciudad){
		ciudad.eliminar(objetivo)
	}
	override
	method realizarCon(minion){
		objetivo.realizarCon(minion)
	}
	override
	method esApto(minion) = 
		minion.esPeligroso()
		&& objetivo.esApto(minion)

}

object Piramide{
	var property altura

	method esApto(minion) = 
		minion.nivelConcentracion() > altura/2 
			
	method realizarCon(minion){
		minion.alimentar(10)
	}

}

object luna {
	method esApto(minion) = 
		minion.tieneArma("Rayo para encoger") 
			
	method realizarCon(minion){
		minion.otorgarArma(new Arma(nombre = "Rayo Congelante",poder = 10))
	}

}

object sueroMutante{

	method esApto(minion) = 
		minion.nivelConcentracion() > 23
		&& minion.bananas()>100 
			
	method realizarCon(minion){
		minion.consumirSueroMutante()
	}
	
}



class Congelar inherits Maldades {
	var property nivelMinimo = 500
	
	method congelarCiuidad() {
		Ciudad.temperatura() == Ciudad.temperatura() - 30
	}
	
	override method realizarCon(minion){
		minion.alimentar(10)
	}
	override method esApto(minion) = 
		minion.tieneArma("Rayo Congelante")
		&& minion.nivelConcentracion() > nivelMinimo 
	
}
