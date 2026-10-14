

class Paquete {
    var duracion

    method duracion() = duracion

    var precio

    method precio() = precio

    var beneficio

    method beneficio() = beneficio

    var coordinadorConCargo

    method coordinadorConCargo() = coordinadorConCargo
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

    method pais() = pais

    var cantidadDeEscalas

    method cantidadDeEscalas() = cantidadDeEscalas

    //method obtenerKilometrosParaLlegarADestino(){

    //}

    var esLugarDeInteres

    method esLugarDeInteres() = esLugarDeInteres


}

class Coordinador inherits Paquete {

    var cantidadDeViajes

    method cantidadDeViajes(){ //no se me ocurrio de donde sacar la cantidad de via
        paquetes.filter({unPaquete => unPaquete.pais()}).size()
    }

    var estaMotivado

    method estaMotivado() = estaMotivado

    var añosDeExperiencia

    method añosDeExperiencia() = añosDeExperiencia

    var rol

    method rol() = rol

    method cambiarRol(nuevoRol){
        if(nuevoRol == Guia or nuevoRol == AsistenteLogistico or nuevoRol == Acompañante){
            rol = nuevoRol
        } else{
            self.error("rol no existente")
        }
    }


}



