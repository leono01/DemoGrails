package demograils

class TareaController 
{
    def scaffold = true

    def index =
    {
        redirect (action: list)
    }
}
