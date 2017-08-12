<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title></title>

            <meta name="layout" content = "design" />

             <style>
             h2 {
                margin-left:550px;
                margin-top:50px;
             }
             .box {
                    margin-left:20px;
                    margin-top:80px;
             }
             </style>
</head>

<body>
     <h2> Movie Details </h2>
            <div class="box">
                <p> ${view.title} </p>
                <p> ${view.genre} </p>
                <p> ${view.director}</p>
                <p>${view.yearofrelease}</p>
                <p> ${view.summary} </p>
                <p> ${view.author} </p>
             </div>
</body>
</html>