

class Paquete {
    var duracion

    method duracion() = duracion

    var precioBase

    method precioBase() = precioBase

    var beneficios = []

    method beneficios() = beneficios

    method agregarBeneficio(unBeneficio){
        beneficios.add(unBeneficio)
    }

    method obtenerTotalDeBeneficios(){
        beneficios.sum()
    }

    var coordinadorConCargo

    method coordinadorConCargo() = coordinadorConCargo

    method valorFinal(){
        return self.precioBase() + self.obtenerTotalDeBeneficios()
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
        return actividades.map({unaActividad => unaActividad.actividad()})
    }

    override method valorFinal(){
        return super()
    }

}

class Internacional inherits Paquete {

    var pais

    method pais() = pais

    var cantidadDeEscalas = self.duracion()

    method cantidadDeEscalas() = cantidadDeEscalas

    var esLugarDeInteres

    method esLugarDeInteres() = esLugarDeInteres

    override method valorFinal(){
        return super() + 20
    }


}

class Coordinador inherits Paquete {

    //var cantidadDeViajes

    method cantidadDeViajes(){
        return paquetes.filter({unPaquete => unPaquete.pais()}).size()
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

