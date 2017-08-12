package moviedatabase

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/movie/index")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
