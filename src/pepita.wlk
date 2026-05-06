import wollok.game.*
import extras.*
import direcciones.*
import estado.*
object pepita {
	const perseguidor = silvestre
	var property position = game.at(0,2)
	var energia = 100
	var energiaPorkm = 9
	var estado = descansada

	method text() = "\n\n\n" + energia
	method image() = self.estado().image()
	method estado() = estado

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
		self.estado().mover(direccion, self)
	}

	method cambiarEstado(_estado) {
	  	estado = _estado
	}

	method cansada(){
		const energiaNecesariaPorKm = 9
		return energia < energiaNecesariaPorKm
	}


	method volar(direccion) {
		const siguientePosicion = direccion.siguiente(position)

		if (position != siguientePosicion) {
			energia = energia - energiaPorkm 
			position = siguientePosicion
		}
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