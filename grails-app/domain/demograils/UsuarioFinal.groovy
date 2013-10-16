package demograils

class UsuarioFinal 
{
    String nombreDeUsuario
    String password
    String nombreCompleto
    
    String toString () {
        "${nombreCompleto}"
    }
    
    static hasMany = [proyectos:Proyecto]
    
    
    
    static constraints = 
    {
        nombreCompleto()
        nombreDeUsuario()
        password()
    }
}
