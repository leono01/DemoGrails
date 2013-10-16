package demograils

class UsuarioFinalController 
{
    def scaffold = true

    def index =
    {
        redirect (action: list)
    }
}
