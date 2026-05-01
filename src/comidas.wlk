import wollok.game.*

object manzana {
	const base= 5
	var madurez = 1

	method position() = game.at(5, 5)
	method image() = "manzana.png"
	
	method energiaQueOtorga() {
		return base * madurez	
	}
	
	method madurar() {
		madurez = madurez + 1
	}

}

object alpiste {
	method position() = game.at(3, 3)
	method image() = "alpiste.png"
	
	method energiaQueOtorga() {
		return 20
	} 

}

