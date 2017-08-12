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
              <g:javascript>
                    function countCharacter(){
                         var len = document.getElementById("textArea").value.length;
                         document.getElementById("textBox").innerHTML=500-len+" Character's left";
                         if(len>=500){
                            alert("Oops! Character's limit exceeded");
                            return false;
                         }
                       }
              </g:javascript>
              <style>
                   body {
                            background-image: url('${resource(dir: "images", file: "list.jpg")}');
                            background-repeat: no-repeat;
                            background-size: cover;
                        }
                   #a1,#a2,#a3,#a4,#a5 {
                       color: white;
                   }

                    #link {
                            color:#ffffff;
                    }
                   .page-header {
                        font-size: 20px;
                        color:white;
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
                    <li><a href="/movie/details" id = "a1"<i class = "fa fa-list"></i> List</a></li>
                    <li><a href="/movie/create" id = "a3"><i class = "fa fa-plus"></i> Add</a></li>
                    <li ><a href="/logout" id = "a2" onclick="return confirm('Are you sure???')"><i class = "fa fa-power-off"></i> Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>
        <div class="container">
            <div class="page-header text-center">
                    <g:pageProperty name="page.header"/>
             </div>
             <g:pageProperty name="page.mainContent"/>
        </div>
    <g:layoutBody/>
</body>
</html>