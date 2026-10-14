

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

    var actividades = []

    method obtenerTodasLasActividades(){
        actividades.map({unaActividad => unaActividad.})
    }

    var nombre
}

class Internacional inherits Paquete {

    var pais

    var cantidadDeEscalas

}

class Coordinador {
    var paquetes = []

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




