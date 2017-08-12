package com.moviedatabase

class Moviedetails {

    String title
    String genre
    String director
    String yearofrelease
    String summary
    User user
    CertificateType type
    Float rating
    static mapping = {
        summary type: "text"
    }

    static constraints = {

        title (blank: false)
        genre (blank: false)
        director (blank: false)
        yearofrelease (blank: false)
        summary (blank: false)
        rating (min: 0.0f)
    }
}
enum CertificateType {
    U(1), U_A(2), A(3)
    int id

    CertificateType(int id) {
        this.id=id
    }
}
