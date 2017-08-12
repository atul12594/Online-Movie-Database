package com.moviedatabse

import uk.co.desirableobjects.oauth.scribe.OauthService
import org.scribe.model.Token
import grails.transaction.Transactional
import grails.converters.JSON

@Transactional
class MovieService {

    OauthService oauthService

    def serviceMethod(Token facebookAccessToken) {

        def detail =  oauthService.getFacebookResource(facebookAccessToken, 'https://graph.facebook.com/v2.8/me').body
        def response = JSON.parse(detail)
        print response
        return response


    }
}
