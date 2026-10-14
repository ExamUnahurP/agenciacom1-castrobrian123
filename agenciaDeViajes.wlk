

class Paquete {
    var duracion

    method duracion() = duracion

    var precio

    method precio() = precio

    var beneficios = []

    method beneficios() = beneficios

    method agregarBeneficio(unBeneficio){
        beneficios.add(unBeneficio)
    }

    method obtenerResultadoDBeneficios(){
        beneficios.sum()
    }

    var coordinadorConCargo

    method coordinadorConCargo() = coordinadorConCargo

    method valorFinal(){
        self.precioBase() + self.beneficio()
    }
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

    //var cantidadDeViajes

    method cantidadDeViajes(){ //no se me ocurrio de donde sacar la cantidad de viajes
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

object trasladoPrivado {

    var nombre = "trasladoPrivado"
    var costo = 500
}

object accesoVip {
    var nombre = "accesoVip"
    var costo = 3000
}

object seguro {
    var nombre = "seguro"
    var costo = 8000
}

