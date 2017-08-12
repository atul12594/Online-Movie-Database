package com.moviedatabase

import grails.test.mixin.TestFor
import spock.lang.Specification
import com.moviedatabase.Rating
/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Rating)
class RatingSpec extends Specification {

    def setup() {
    }

    def cleanup() {
    }

    void "test if value of rating is false"() {

        expect:
        new Rating(rating: userRating).validate(['userRating'])!= mustBeValid

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
        new Rating(rating: userRating).validate(['userRating'])== mustBeValid

        where:
         userRating | mustBeValid
              0 | true
              1 | true
              2 | true
              3 | true
              4 | true
              5 | true
    }
    void "test for Rating Domain class"() {
        when:

        Rating rate = new Rating([
                rating : 5.0f,
                user : "atul",
                movie : "Sultan"
        ])
        then:
        rate.rating == 5.0f
    }
}

