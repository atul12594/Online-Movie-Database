package com.moviedatabase

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(RegisterController)
@Mock([User, Role, UserRole])
class RegisterControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test for saving details"() {
        when:
        params.username="anand"
        controller.save()

        then:
        response.redirectUrl != "login/index"
    }
}
