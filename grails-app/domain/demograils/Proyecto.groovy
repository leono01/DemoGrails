package demograils

// cada clase con sus atributos es parte del domain (modelo)
class Proyecto {
// Columnas de la tabla
    String  nombre
    String  descripcion
    Date    fechaVencimiento
    
    String toString () {
        "${nombre}"
    }
    
    static belongsTo = [dueno : UsuarioFinal]
    static hasMany = [tareas:Tarea]
    
    // String  toString()  {"${nombreCompleto}"}
    
    //static hasMany = [projects : Project, tasks : Task]

    static constraints = 
    {
        nombre()
        fechaVencimiento()
        descripcion()
      
    }
}
