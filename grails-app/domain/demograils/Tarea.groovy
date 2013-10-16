package demograils

class Tarea 
{
    String  nombre
    String  descripcion
    Date    fechaVencimiento
    
    String toString () {
        "${nombre}"
    }
    
    static belongsTo = [asignadaA : UsuarioFinal , esParteDelProyecto : Proyecto]

    static constraints = 
    {
        nombre()
        fechaVencimiento()
        descripcion()
    }
}
