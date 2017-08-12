package com.moviedatabase

import org.scribe.model.Token
import uk.co.desirableobjects.oauth.scribe.OauthService
import java.time.Year

class MovieController {
    OauthService oauthService
    def MovieService
    def springSecurityService
    def index() {
    }

    def create() {
    }

    def show() {
        User currentUser = springSecurityService.currentUser
        Moviedetails showInstance = Moviedetails.get(params.id)
        [show: showInstance, currentUser: currentUser]
    }

    def details() {

        def value = params.newsFeeds
        def movieInstance
        if(value == null) {
            movieInstance = Moviedetails.list();
        }
        else if(value == "0") {
            movieInstance = Moviedetails.list();
        }
        else if (value == "1") {
            movieInstance = Moviedetails.findAllByGenreLike("Hindi%")
            println movieInstance
        }
        else if (value == "2") {
            movieInstance = Moviedetails.findAllByGenreLike("English%")
        }
        else if (value == "3") {
            movieInstance = Moviedetails.listOrderByRating(order: "desc")
        }
        [viewAll: movieInstance ]
    }

    def save() {
        User currentUser = springSecurityService.currentUser
        String[] year = params.newyor.split("-")
        def value = params.certificate
        def ctype
        if(value == "1") {
            ctype = CertificateType.U
        }
        else if(value == "2") {
            ctype = CertificateType.U_A
        }
        else if (value == "3"){
            ctype = CertificateType.A
        }
        Moviedetails movieInstance = new Moviedetails([title: params.newtitle, genre: params.newgenre,
                                                       director: params.newdir, yearofrelease: year[0], summary: params.newsummary,
                                                       user: currentUser,type: ctype, rating:0.0f ])
        movieInstance.save()
        flash.message = " Your Movie details has been successfully submitted "
        redirect(controller: "movie", action: "details")
    }
    def edit() {
        Moviedetails movieInstance = Moviedetails.get(params.id)
        [edit: movieInstance]
    }
    def update() {
        def currentUser = springSecurityService.currentUser
        Moviedetails movieInstance = Moviedetails.get(params.id)
        movieInstance.title = params.newtitle
        movieInstance.genre = params.newgenre
        movieInstance.director = params.newdir
        movieInstance.yearofrelease = params.newyor
        movieInstance.summary = params.newsummary
        movieInstance.save()
        flash.message = "Movie details has been successfully updated"
        redirect(action:"show" , id: movieInstance.id)
    }
    def delete() {
        Moviedetails movieInstance = Moviedetails.get(params.id)
        movieInstance.delete()
        flash.message = "Movie has been successfully deleted"
        redirect(controller: "movie", action:"details")
    }
    def rating() {
        Moviedetails movieInstance = Moviedetails.get(params.id)
        println (movieInstance)
        def currentUser = springSecurityService.currentUser
        println(params.rating)
        int val = Integer.parseInt(params.rating)
        println(val)
        float value1 = 0.0f
        value1 = value1 + val

        Rating rateInstance = Rating.createCriteria().get {
            eq("user", currentUser)
            eq("movie", movieInstance)
        }

        if(rateInstance) {
            rateInstance.rating = value1
            rateInstance.save()
        }
        else {
            rateInstance = new Rating()
            rateInstance.user = currentUser
            rateInstance.movie = movieInstance
            rateInstance.rating = value1
            rateInstance.save()
        }

        def rateInstance1 = Rating.createCriteria().get {
            eq("movie", movieInstance)
            projections {
                avg("rating")
            }
        }
        movieInstance.rating = rateInstance1
        redirect(controller:"movie", action:"details")
    }

}

