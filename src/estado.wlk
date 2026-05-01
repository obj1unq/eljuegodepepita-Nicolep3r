// import wollok.game.*
// import pepita.*
// import direcciones.*
// object viva {
//   method image() = "pepita.png" 

//   	method mover(pepita, direccion){
//         const oldPosition = pepita.position()
//         pepita.position(direccion.siguiente(pepita.position()))
// 		if(pepita.position() != oldPosition){
// 			self.volar(pepita, 1)
// 	    }
//     }

//     method volar(pepita, kms){
// 		pepita.energia(pepita.energia() - (9 * kms))
// 	}

//     method comer(pepita,comida) {
// 		pepita.energia(pepita.energia() + comida.energiaQueOtorga())
// 		game.removeVisual(comida)
// 	}
//     // claro aca estoy usando el setter, obtengo con getter y le sumo la energia de la comida aaaaaaaaaaaaaaaaaaaa


// // .position() seria el getter, pepita.position(direccion.siguiente(pepita.position())) setter con getter 
// }
// 	// const oldPosition = position
// 	// 	position = self.siguientePosicion(direccion)

// 	// 	if(position != oldPosition) self.volar(1)


// object muerta {

//     method image() = "pepita-gris.png" 

//     method mover(pepita,direccion){}

//     method volar(pepita, kms){}

//     method comer(pepita,comida) {}

// }