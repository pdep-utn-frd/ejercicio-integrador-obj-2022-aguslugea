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
}

class Robar inherits Maldades {
	
}

class Congelar inherits Maldades {
	
	method congelarCiuidad() {
		ciudad.temperatura() == ciudad.temperatura() - 30
	}
	
}
