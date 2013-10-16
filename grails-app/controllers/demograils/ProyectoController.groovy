package demograils

class ProyectoController 
{
    def scaffold = true

    // "index" es el método default del controlador UsuarioFinalController
    def index =
    {
    // "redirect" configura para apuntar el método default de todos los métodos del controlador
        redirect (action: list)
    }
    def actual = // definición de un método
    { 
    // "render" manda texto al browser
    
        
        //def nombreDelProyecto   = "Rasteador de proyectos Lyon" // definición de una variable
        //def fechaCaducidad      = "09/10/2013"
        //[proyecto:nombreDelProyecto,fecha:fechaCaducidad]   //asigna el valor de NombreDelProyecto a la variable proyecto, 
                                                              //que es definida dentro del archivo GSP actual (vista)
        
        def todosLosProyectos = ListaDeProyectos.list()     // Obtiene toda la info contenida en el modelo ListaDeProyectos
        [todosLosProyectos:todosLosProyectos]                                                            
    } 
    
    // "proyectoAtrsado" método que no es default
    def proyectoAtrasado =
    {
        render "Orden de Paquete de San Valentín"
    }
}
