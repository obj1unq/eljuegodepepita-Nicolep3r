import wollok.game.*
import pepita.*
object silvestre {
    const presa = pepita

    var property position = game.at(2,0)
    method image() = "silvestre.png"
    method position() = game.at(self.x(), 0)
    method x(){
        const xPresa = presa.positionX()
        return if (xPresa >=3) xPresa else 3
    }


}

// puedo modelar codigo de bloques { 1 + 2}
// var = miBloque = {pepita.algo(2)} --> No hace nda 
// miBloque.apply --> Ahi si lo ejecuta 
//  Se usa para guardar una ejecucion que no quiero
//   que se haga en x momento.Me guardo un comportamiento 
