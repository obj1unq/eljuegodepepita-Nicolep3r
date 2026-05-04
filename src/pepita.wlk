import wollok.game.*
import extras.*
import direcciones.*
object pepita {
	const perseguidor = silvestre
	var property position = game.at(0,2)
	var energia = 100

	method text() = "\n\n\n" + energia
	method image() = "pepita" + self.estado() + ".png" 


	method estado() {
		return if(self.atrapada() || self.cansada()) "-gris" else ""
	}


	method atrapada() = position == perseguidor.position() 
	//devuelve un booleano
	
	method descender(){
		position = abajo.siguiente(position)
	}

	method positionX(){
		return position.x()
	} 

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
		game.removeVisual(comida)
	}


	method mover(direccion) {
		if(!(self.atrapada() || self.cansada())){
			position = direccion.siguiente(position)
			self.volar(1)
		}else{
			game.stop()
		}
		// const oldPosition = position
		// // posicion x,y

		// if(position != oldPosition) 
	}

	
	method cansada(){
		const energiaNecesariaPorKm = 9
		return energia < energiaNecesariaPorKm
	}


	method volar(kms) {
		energia = energia - (9 * kms) 
	}
	
	method energia() {
		return energia
	}

}



//Cuando me voy para abajo, comprueba siempre si esta encima de silvestre para q haga un evento.
// evento x movimiento   evento=metodo
//cambiar imagen
// Onpress, el tiempo, colisiones --> Tipo de eventos
// objeto, mensajem, referencia, polimorfismo, encapsulamiento, abstraccion
//Averiguar sobre try catch
//Si la (x,y) cambia lo hacemos volar, si no cambia es porque no puede volar mas arriba  y no consume energia 