package grailstest

import com.otg.AppInitializationService
class BootStrap {

    def init = { servletContext ->

    AppInitializationService.initialize()

    }
    def destroy = {
    }
}
