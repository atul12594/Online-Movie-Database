package com.moviedatabase

import org.scribe.model.Token
import uk.co.desirableobjects.oauth.scribe.OauthService

class LoginController {

    OauthService oauthService
    def MovieService
    def springSecurityService

    def index() {
        User currentUser = springSecurityService.currentUser
        if(currentUser) {
            redirect(controller: "movie", action: "details")
        }
        else {

        }
    }
    def success() {
        String sessionKey = oauthService.findSessionKeyForAccessToken('facebook')
        def token = session[sessionKey]
        def details = MovieService.serviceMethod(token)
        def email = details.id+"@facebook.com"
        User user = User.findByUsername("${details.name}")
        if(user) {
            springSecurityService.reauthenticate(email)
            redirect(controller:"movie", action:"details")
        }
        else {
            User myuser = new User([username: email, password: "facebook"])
            myuser.save()
            springSecurityService.reauthenticate(email)
            redirect(controller: "movie", action: "details")
        }

    }

}
