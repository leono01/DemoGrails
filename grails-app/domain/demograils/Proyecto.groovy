package demograils

// cada clase con sus atributos es parte del domain (modelo)
class Proyecto {
// Columnas de la tabla
    String  nombre
    String  descripcion
    Date    fechaVencimiento
    String  tipoFacturacion    //  La manera en como se le paga al que trabaja en el proyecto
    
    String toString () {
        "${nombre}"
    }
    
    static belongsTo = [dueno : UsuarioFinal]
    static hasMany = [tareas:Tarea]
    
    // String  toString()  {"${nombreCompleto}"}
    
    //static hasMany = [projects : Project, tasks : Task]

    static constraints = 
    {
        nombre(blank:false, unique:true)    //Se requiere un nombre y que no sea el mismo a un proyecto ya existente
        fechaVencimiento(blank:false,min: new Date()) // Se requiere una fecha y que sea posterior a la de hoy
        descripcion(blank:true) //Se permite un proyecto sin descripción alguna
        tipoFacturacion(inList: ["Por Hora","Por semana","No requiere factura"])
    }
}
