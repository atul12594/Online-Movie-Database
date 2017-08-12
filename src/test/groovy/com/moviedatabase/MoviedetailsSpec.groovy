package com.moviedatabase

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Moviedetails)
class MoviedetailsSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test if value of rating is false"() {

        expect:
        new Moviedetails(rating: userRating).validate(['userRating'])!= mustBeValid

        where:
        userRating | mustBeValid
        ''   | false
        -1   | false
        -2   | false
        -3   | false
        -4   | false
        -5   | false
    }

    void "test if value of rating is true"() {
        expect:
        new Moviedetails(rating: userRating).validate(['userRating'])== mustBeValid

        where:
        userRating | mustBeValid
        0 | true
        1 | true
        2 | true
        3 | true
        4 | true
        5 | true
    }

    void "test for Moviedetails Domain class"() {
        when:

        Moviedetails movie = new Moviedetails([
                title:"Sultan",
                genre:"Hindi(drama)",
                director:"Aditya chopra",
                yearofrelease:"2016",
                rating:5.0f
        ])
        then:
        movie.title == "Sultan"
    }
}
