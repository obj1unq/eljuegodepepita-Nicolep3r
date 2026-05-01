import wollok.game.*
import pepita.*
object silvestre {
    //Hago referencia a que presa = pepita para poder usarla, solo puedo llamarla como atributo, parametro o 
    //  global
    const presa = pepita
    //posicion inicial
    var property position = game.at(3,0)
    method image() = "silvestre.png"


    //vuelvo a definir la posiicon de silvestre
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
