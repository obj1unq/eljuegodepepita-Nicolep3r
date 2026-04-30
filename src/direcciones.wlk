import wollok.game.*

object izquierda {
    //posicion.x() < 0 --> Significa que si no esta en el borde izquierdo devuelve la posicion +1
    //sino no se mueve y devuelve el mismo 
    method siguiente(posicion) = if (posicion.x() > 0 ) posicion.left(1) else posicion
  
}

//El ancho del tablero -1 (el borde del lado derecho) 
object derecha {
      method siguiente(posicion) = if (posicion.x() < (game.width()-1)) 
                                        posicion.right(1) 
                                else posicion
}

object arriba {
    method siguiente(posicion) = if(posicion.y() < (game.height()-1)) 
                                        posicion.up(1) 
                                else posicion

}

object abajo {
    method siguiente(posicion) =
       if (posicion.y() > 0) 
                posicion.right(1) 
            else posicion
}