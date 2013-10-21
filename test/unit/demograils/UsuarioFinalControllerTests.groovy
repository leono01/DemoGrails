package demograils



import org.junit.*
import grails.test.mixin.*

@TestFor(UsuarioFinalController)
@Mock(UsuarioFinal)
class UsuarioFinalControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/usuarioFinal/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.usuarioFinalInstanceList.size() == 0
        assert model.usuarioFinalInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.usuarioFinalInstance != null
    }

    void testSave() {
        controller.save()

        assert model.usuarioFinalInstance != null
        assert view == '/usuarioFinal/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/usuarioFinal/show/1'
        assert controller.flash.message != null
        assert UsuarioFinal.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/usuarioFinal/list'

        populateValidParams(params)
        def usuarioFinal = new UsuarioFinal(params)

        assert usuarioFinal.save() != null

        params.id = usuarioFinal.id

        def model = controller.show()

        assert model.usuarioFinalInstance == usuarioFinal
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/usuarioFinal/list'

        populateValidParams(params)
        def usuarioFinal = new UsuarioFinal(params)

        assert usuarioFinal.save() != null

        params.id = usuarioFinal.id

        def model = controller.edit()

        assert model.usuarioFinalInstance == usuarioFinal
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/usuarioFinal/list'

        response.reset()

        populateValidParams(params)
        def usuarioFinal = new UsuarioFinal(params)

        assert usuarioFinal.save() != null

        // test invalid parameters in update
        params.id = usuarioFinal.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/usuarioFinal/edit"
        assert model.usuarioFinalInstance != null

        usuarioFinal.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/usuarioFinal/show/$usuarioFinal.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        usuarioFinal.clearErrors()

        populateValidParams(params)
        params.id = usuarioFinal.id
        params.version = -1
        controller.update()

        assert view == "/usuarioFinal/edit"
        assert model.usuarioFinalInstance != null
        assert model.usuarioFinalInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/usuarioFinal/list'

        response.reset()

        populateValidParams(params)
        def usuarioFinal = new UsuarioFinal(params)

        assert usuarioFinal.save() != null
        assert UsuarioFinal.count() == 1

        params.id = usuarioFinal.id

        controller.delete()

        assert UsuarioFinal.count() == 0
        assert UsuarioFinal.get(usuarioFinal.id) == null
        assert response.redirectedUrl == '/usuarioFinal/list'
    }
}
