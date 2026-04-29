import pepita.*
import wollok.game.*

object izquierda {
    method siguiente(posicion) = if (posicion.x() > 0 ) 
                                        posicion.left(1) 
                                else posicion
  
}

object derecha {
      method siguiente(posicion) = if (posicion.x() < (game.width()-1)) 
                                        posicion.right(1) 
                                else posicion
}

object arriba {
    method siguiente(posicion) = if(posicion.y() < (game.height()-1)) 
                                        posicion.up(1) 
                                else posicion

//   if(visual.position().y() < self.height()-1) visual.position(visual.position().up(1)) })
}

object abajo {
      //   if(visual.position().y() > 0) visual.position(visual.position().down(1)) })
    // keyboard.right().onPressDo({ 
    method siguiente(posicion) =
       if (posicion.y() > 0) 
                posicion.right(1) 
            else posicion
}