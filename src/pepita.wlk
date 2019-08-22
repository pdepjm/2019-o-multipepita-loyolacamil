object pepita {
	var energia = 100

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz() {
		return 500 < energia < 1000
	}
	
	method vueloBase(){
		return energia / 5
	}
	
	
	method cuantoQuiereVolar() {
		
		var km = 0
		if(energia.between(300, 400)) {
			km = km + 10
		}
		if(energia%20 == 0){
			km = km + 15
		}
		
		return self.vueloBase() + km  
	}
	
	method salirAComer() {
		var kmDepositoAlpiste = 5
		self.vola(kmDepositoAlpiste)
		self.come(alpiste)
		self.vola(kmDepositoAlpiste)		
	}

}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	method mojarse(){
		
	}
	method secarse(){
		
	}
}