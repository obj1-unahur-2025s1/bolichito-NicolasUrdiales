import personas.*
import objetos.*

object bolichito{
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera
    method objetoEnVidriera() {return objetoEnVidriera}
    method objetoEnMostrador() {return objetoEnMostrador}
    method cambiarObjetoEnVidriera(unObjeto){ objetoEnVidriera = unObjeto}
    method cambiarObjetoEnMostrador(unObjeto){objetoEnMostrador = unObjeto}
    method esBrillante(){
        return objetoEnMostrador.material().brilla() && objetoEnVidriera.material().brilla()
    }
    method esMonocromatico(){
        return objetoEnMostrador.color() == objetoEnVidriera.color()

    }
    method estaEquilibrado(){
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method tieneAlgoDeColor(unColor){
        return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor
    }
    method puedeMejorar(){
        return !self.estaEquilibrado() || self.esMonocromatico()
    }
    method puedeOfrecerAlgo(unaPersona){
        return 
        unaPersona.leGusta(objetoEnVidriera) || 
        unaPersona.leGusta(objetoEnMostrador)
    }
    method intercambiarObjetos(){
        const aux = objetoEnMostrador
        objetoEnMostrador = objetoEnVidriera
        objetoEnVidriera = aux
    }
    

}