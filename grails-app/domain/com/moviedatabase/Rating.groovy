package com.moviedatabase

class Rating {

    Float rating
    User user
    Moviedetails movie

    static constraints = {
        rating (min:0.0f)
    }
}

