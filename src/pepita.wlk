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
		return energia.between(500,1000)
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
	
	method haceLoQueQuieras () {
		if(self.estaCansada()){
			self.come(alpiste)
		}
		if (self.estaFeliz()) {
			self.vola(8)
		}
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
	var energiaDelmijo
	
	method mojarse () {
		energiaDelmijo = 15
	}
	method secarse () {
		energiaDelmijo = 20
	}
	method energiaQueOtorga () {
		return energiaDelmijo		
	}
}

object canelones {
	
	var energiaCanelones = 20
	
	method ponerSalsa () {
		energiaCanelones = energiaCanelones + 5
		}
		
	method ponerQueso () {
		energiaCanelones = energiaCanelones + 7
	}	
	
	method sacarSalsa () {
		energiaCanelones = energiaCanelones - 5
	}
	
	method sacarQueso () {
		energiaCanelones = energiaCanelones - 7	
	}
	
	method energiaQueOtorga () {
		return energiaCanelones 
	}
}

