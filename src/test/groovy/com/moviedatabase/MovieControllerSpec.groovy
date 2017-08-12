package com.moviedatabase

import grails.test.mixin.Mock
import grails.test.mixin.TestFor
import spock.lang.Specification


/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(MovieController)
@Mock(Moviedetails)
class MovieControllerSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test for deletion of movie"() {
        when:
        params.id = 2
        controller.delete()

        then:
        response.redirectUrl == "/movie/details"

    }
}
