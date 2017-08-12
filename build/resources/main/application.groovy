
// Added by the Spring Security Core plugin:
grails.plugin.springsecurity.auth.loginFormUrl = '/login/index'
grails.plugin.springsecurity.successHandler.alwaysUseDefault = true
grails.plugin.springsecurity.successHandler.alwaysUseDefaultTargetUrl = true
grails.plugin.springsecurity.logout.postOnly = false
grails.plugin.springsecurity.logout.alwaysUseDefaultTargetUrl = true
grails.plugin.springsecurity.logout.afterLogoutUrl = '/movie/index'
grails.plugin.springsecurity.successHandler.defaultTargetUrl = '/movie/details'
grails.plugin.springsecurity.failureHandler.defaultFailureUrl = '/login/index?message=Incorrect username or password'
grails.plugin.springsecurity.userLookup.userDomainClassName = 'com.moviedatabase.User'
grails.plugin.springsecurity.userLookup.authorityJoinClassName = 'com.moviedatabase.UserRole'
grails.plugin.springsecurity.authority.className = 'com.moviedatabase.Role'
grails.plugin.springsecurity.controllerAnnotations.staticRules = [
	[pattern: '/',               access: ['permitAll']],
	[pattern: '/error',          access: ['permitAll']],
	[pattern: '/index',          access: ['permitAll']],
	[pattern: '/index.gsp',      access: ['permitAll']],
	[pattern: '/shutdown',       access: ['permitAll']],
	[pattern: '/assets/**',      access: ['permitAll']],
	[pattern: '/**/js/**',       access: ['permitAll']],
	[pattern: '/**/css/**',      access: ['permitAll']],
	[pattern: '/**/images/**',   access: ['permitAll']],
	[pattern: '/**/favicon.ico', access: ['permitAll']],
	[pattern: '/oauth/**',       access: ['permitAll']],
	[pattern: '/movie/**',       access: ['permitAll']],
	[pattern: '/register/**',    access: ['permitAll']]
]

grails.plugin.springsecurity.filterChain.chainMap = [
	[pattern: '/assets/**',      filters: 'none'],
	[pattern: '/**/js/**',       filters: 'none'],
	[pattern: '/**/css/**',      filters: 'none'],
	[pattern: '/**/images/**',   filters: 'none'],
	[pattern: '/**/favicon.ico', filters: 'none'],
	[pattern: '/**',             filters: 'JOINED_FILTERS']
]

oauth {
	providers {
		facebook {
			api = org.scribe.builder.api.FacebookApi
			key = '356965284663419'
			secret = '0a36f81edded4b3b94ee1423a99dc325'
			successUri = 'http://localhost:8080/login/success'
			failureUri = 'http://localhost:8080/movie/index'
			callback = "http://localhost:8080/oauth/facebook/callback"
		}
	}
}

grails.facebook.api.url = "https://graph.facebook.com/v2.8/oauth/access_token"