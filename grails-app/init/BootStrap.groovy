class BootStrap {

    def init = { servletContext ->
        com.moviedatabase.User adminRole = new com.moviedatabase.User(username: 'atul' , password:'atul', enabled: 'true').save(flush:true)
        com.moviedatabase.Role userRole = new com.moviedatabase.Role(authority: 'ROLE_USER').save(flush:true)

        com.moviedatabase.UserRole.create(adminRole, userRole)
    }
    def destroy = {
    }
}
