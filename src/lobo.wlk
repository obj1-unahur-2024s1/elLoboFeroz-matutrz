object loboFeroz {
	
	var pesoDelLobo = 10
	
	method estaSaludable() = pesoDelLobo.between(20, 150)
	
	method aumentarPeso(peso) { pesoDelLobo = pesoDelLobo + peso }
	
	method disminuirPeso(peso) { pesoDelLobo = pesoDelLobo - peso }
	
	method sufrirCrisis() { pesoDelLobo = 10 }
	
	method comerAlgo(peso){ pesoDelLobo = pesoDelLobo + (peso * 0.10) }
	
	method correrHaciaLugar() { pesoDelLobo = pesoDelLobo - 1 }
	
	method soplarCasaParaDerribarla(resistencia) = 5.max(pesoDelLobo - resistencia)
}

object caperucitaRoja {
	
	method peso() {return 60}
	
	method pesoTotal() = self.peso() + canasta.peso()
}

object canasta {
	
	var manzanas = 6
	
	method peso() = manzana.peso() * manzanas
	
	method sumarManzana() { manzanas = manzanas + 1 }
	
	method perderManzana() { manzanas = manzanas - 1 }
}

object manzana {
	
	method peso() { return 0.2 }
	
}

object abuelita {
	
	method peso() {return 50}
}

object cazador {
	
	method peso() {return 75}
	
}

object chanchito {
	
	method peso() {return 10}
}

object casaDePaja {
	
	var chanchitos = 1
	
	method resistencia() { return 0 }
	
	method resistenciaTotal() = self.resistencia() + ( chanchito.peso() * chanchitos )
}

object casaDeMadera { 
	
	var chanchitos = 1
	
	method resistencia() { return 5 }
	
	method resistenciaTotal() = self.resistencia() + ( chanchito.peso() * chanchitos )
	
	method sumarChanchito() { chanchitos = chanchitos + 1}
}

object casaDeLadrillos {
	
	var chanchitos = 1
	
	var resistencia = 0
	
	method resistencia(ladrillos) { resistencia = ladrillos * 2 } 
	
	method resistenciaTotal() = resistencia + ( chanchito.peso() * chanchitos )
	
	method sumarChanchito() { chanchitos = chanchitos + 1}
	
}