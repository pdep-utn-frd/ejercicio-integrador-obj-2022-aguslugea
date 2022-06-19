
class  Armas {
	var property nombre
	var property potencia
}

class Minions {
	var property amarillo = true
	const property armas = []
	var property bananas 
	var property peligroso = false
	var property concentracion
	var property maldades
	
	
	method agregarArma(arma) {
		armas.add(arma)
	
	}
	
	method tieneArma(nombre){
		return armas.any{x=>x.nombre() == nombre}
	}
	
	
	method potenciaArmaPotente() {
 
		return armas.max{a=> a.poder()}.poder()
		
		}
	
	method alimentarse(cantidad) {
		bananas = bananas + cantidad
	}
	
	method tomarSueroMutante() {}
	
	method agregarMaldad(){
		maldades += 1
	
	}
	
	method calcularConcentracion() {
		concentracion = bananas + self.potenciaArmaPotente()
	}
}	

class MinionAmarillo inherits Minions {	
	
	override method tomarSueroMutante() {
		amarillo = false
		armas.clear()
		bananas = bananas - 1
		peligroso = true
	}
}

class MinionVioleta inherits Minions {	
	
	method estado() {
		peligroso = true
	}
	
	override method tomarSueroMutante() {
		amarillo = true
		bananas = bananas -  1
	}
	
	
}

class Villano {
	const property minions = []
	var property ciudad
	
	method crearMinion() {
		minions = new Minions (bananas = 5)
		const rayoCongelante = new Armas(nombre = "Rayo Congelante", potencia = 10)
		minions.agregarArma(rayoCongelante)
		minions.add(minions)
	}
	
	method agregarMinion(minion){
		minions.add(minion)
	}
	
	method hacerMaldad(maldad){
		maldad.realizar(ciudad)
	}
	
	method minionMasUtil() = minions.max({x=> x.maldades()})
	method minionInutiles() = minions.filter({x=> x.maldades() < 1})
	
	
}

class Ciudad {
	var property nombre
	var property temperatura
}
