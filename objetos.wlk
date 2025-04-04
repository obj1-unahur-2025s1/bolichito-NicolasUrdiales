// colores
object rojo {
  method esFuerte() {return true}
}
object verde{
    method esFuerte() {return true}
}

object celeste {
  method esFuerte() {return false}
}

object pardo {
  method esFuerte() {return false}
}

object naranja {
  method esFuerte() {return true}
}
// materiales

object cobre {
    method brilla() {return true}
}

object vidrio {
  method brilla() {return true}
}

object lino{
    method brilla() {return false}
}
object madera {
  method brilla() {return false}
}

object cuero {
  method brilla() {return false}
}

//cosas

object remera {
  method peso(){return 800}
  method color(){return rojo}
  method material(){return lino} 
}

object pelota {
  method material(){return cuero}
  method peso() {return 1300}
  method color(){return pardo} 
}
object biblioteca {
  method material(){return madera}
  method peso() {return 8000}
  method color(){return verde} 
}

object munieco {
    var peso = 0
    method peso(){return peso}
    method material(){return vidrio}
    method color(){return celeste}
    method peso(unPeso){peso = unPeso} 
}


object placa {
    var peso = 0
    var color = rojo
    method peso(){return peso}
    method color(){return color}
    method material(){return cobre}
    method peso(unPeso){peso = unPeso}
    method color(unColor){color = unColor}
}


object arito {
  method color(){return celeste}
  method peso() {return 180}
  method material(){return cobre} 
}

object banquito {
  var color = naranja
  method color(){return color}
  method peso() {return 1700}
  method material(){return madera}
  method color(unColor){
    color = unColor
  }
}
object cajita {
  var objetoDentro = remera
  method color(){return rojo}
  method material(){return cobre}
  method objetoDentro(){return objetoDentro}
  method objetoDentro(unObjeto){
    objetoDentro = unObjeto}
  method peso(){return 400 + objetoDentro.peso()}
}
