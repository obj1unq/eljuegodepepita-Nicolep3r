import wollok.game.*
import extras.*
import direcciones.*
object pepita {
	const perseguidor = silvestre
	var property position = game.at(0,2)
	var energia = 100
	method text() = "\n\n\n" + energia
	// var estado = true

	// method text() = "/n/n/n" + energia
	// method init() {
	//   estado = viva
	//   position = game.at(0,0)
	//   energia = 100
	// }
	method image() = "pepita" + self.estado() + ".png" 
  
	// var posicionX = position.x()

	method estado() {
		return if(self.atrapada() || self.cansada()) "-gris" else ""
	}

	//Cuando silvestre agarra a pepita
	method atrapada() = position == perseguidor.position() 
	//devuelve un booleano
	

	method positionX(){
		return position.x()
	} 

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}
//Cuando me voy para abajo, comprueba siempre si esta encima de silvestre para q haga un evento.
// evento x movimiento   evento=metodo
//cambiar imagen
// Onpress, el tiempo, colisiones --> Tipo de eventos
// objeto, mensajem, referencia, polimorfismo, encapsulamiento, abstraccion
//Averiguar sobre try catch

	method mover(direccion) {
		const oldPosition = position
		position = self.siguientePosicion(direccion)

		if(position != oldPosition) self.volar(1)
	}

	method siguientePosicion(direccion) {
        return if(!self.cansada()) direccion.siguiente(position)
    }
	
	method cansada(){
		const energiaNecesariaPorKm = 9
		return energia < energiaNecesariaPorKm
	}
//Si la (x,y) cambia lo hacemos volar, si no cambia es porque no puede volar mas arriba  y no consume energia 

	method volar(kms) {
		energia = energia - (9 * kms) 
	}
	
	method energia() {
		return energia
	}

}



