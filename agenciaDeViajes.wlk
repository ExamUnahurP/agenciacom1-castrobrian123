

class Paquete {
    var duracion

    method duracion()

    var precio

    method precio()

    var beneficio

    method beneficio()

    var coordinadorConCargo

    method coordinadorConCargo()
}

class Nacional inherits Paquete {

    var provincia

    method provincia() = provincia

    var actividades = []

    //por ejemplo // const correr = "estoy corriendo" 

    method agregarActividad(unaActividad){
        actividades.add.(unaActividad)
    }

    method obtenerTodasLasActividades(){
        actividades.map({unaActividad => unaActividad.actividad()})
    }

}

class Internacional inherits Paquete {

    var pais

    method pais()

    var cantidadDeEscalas

    method cantidadDeEscalas()

    //method obtenerKilometrosParaLlegarADestino(){

    //}

    var esLugarDeInteres

    method esLugarDeInteres()


}

class Coordinador {
    var paquetes = []

    var grupo

    var cantidadDeViajes

    method cantidadDeViajes()

    var estaMotivado

    method estaMotivado()

    var añosDeExperiencia

    method añosDeExperiencia()

    var rol

    method rol()

    method cambiarRol(nuevoRol){
        if(nuevoRol == Guia or nuevoRol == AsistenteLogistico or nuevoRol == Acompañante){
            rol = nuevoRol
        } else{
            self.error("rol no existente")
        }
    }


}




