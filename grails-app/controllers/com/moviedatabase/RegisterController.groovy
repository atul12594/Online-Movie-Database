package com.moviedatabase
import com.moviedatabase.User

import uk.co.desirableobjects.oauth.scribe.OauthService

class RegisterController {

    def springSecurityService

    def index() {
        User currentUser = springSecurityService.currentUser
        if(currentUser) {
            redirect(controller: "movie", action: "details")
        }
        else {

        }
    }
    def save() {
        def checkUser = User.findByUsername(params.username)
        if(checkUser) {
            flash.errmsg="Username already exists"
            redirect(action: "index")
        }
        else {
            User myuser = new User([username: params.username, password: params.password])
            print myuser
            myuser.save()
            def role = Role.findById(1)
            print role
            UserRole.create(myuser, role)
            flash.message = "You are successfully registered"
            redirect(controller: "login", action: "index")
        }
    }
}
