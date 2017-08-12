<%@ page contentType="text/html;charset=UTF-8" %>
 <html>
     <head>
         <title></title>
             <meta charset="utf-8">
                 <meta name="viewport" content="width=device-width, initial-scale=1">
                  <asset:javascript src = "jquery.min.js" />
                  <asset:stylesheet src = "bootstrap.min.css"/>
                  <asset:javascript src = "bootstrap.min.js"/>
                   <asset:stylesheet src="font-awesome/css/font-awesome.min.css"/>
                  <style>

                        #a1,#a2,#a3,#a4 {
                                color: white;
                        }

                         #link {
                                color:#ffffff;
                         }

                        .page-header {
                            font-size: 20px;
                        }

                </style>
        <g:layoutHead/>
    </head>

    <body>
        <nav class = "navbar navbar-inverse">
            <div class = "container-fluid">
                <div class = "navbar-header">
                    <button type = "button" class = "navbar-toggle collapsed " data-toggle="collapse" data-target = "#navbar-collapse3">
                        <span class = "sr-only">Toggle navigation</span>
                        <span class = "icon-bar"></span>
                        <span class = "icon-bar"></span>
                        <span class = "icon-bar"></span>
                    </button>
                    <a class="navbar-brand " id= "a1" href="#">MDB <i class="fa fa-film"></i></a>
                </div>
                <div class="collapse navbar-collapse " id="navbar-collapse3">
                    <ul class="nav navbar-nav navbar-right">
                        <li ><a href="/register/index " id = "a2"><i class = "fa fa-sign-in"></i> Sign Up</a></li>
                        <li><a href="/login/index" id = "a3"><i class = "fa fa-plus-square-o"></i> Log in</a></li>
                    </ul>
                </div>
            </div>
        </nav>
            <div class="container-fluid">
                <g:pageProperty name="page.mainContent"/>
             </div>
        <g:layoutBody/>
    </body>
</html>