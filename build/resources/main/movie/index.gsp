<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title></title>
                <meta name="layout" content = "mainpage" />
                <style>
                        body {
                            background-image: url('${resource(dir: "images", file: "image2.jpg")}');
                            background-repeat: no-repeat;
                            background-size: cover;
                        }
                        .box1 {
                            margin-top:50px;
                            font-size: 40px;
                            color:white;
                            text-align:center;
                        }
                        .header {
                            color: #FC016B;
                            font-family: 'Rouge Script', cursive;
                            font-size : 100px;
                            text-align: center;
                        }
                        h3 {
                            font-size : 100px;
                            color: #ffffff;
                            text-align: center;
                        }

                </style>
     </head>
     <body class = "col-sm-12">
       <content tag = "mainContent">

                <div class = "row">
                    <div">
                        <h3>MDB</h3>
                    </div>
                    <div class = "row col-sm-offset-1">
                    <div class= " col-sm-offset-5 col-xs-offset-5">
                         <i class = "fa fa-youtube-play fa-5x" style = "color:white; "></i>
                    </div>
                    </div>
                    <div class = "box1">
                        <p > Enjoy the new venture of </p>
                    </div>

                    <div>
                        <h3 class = "header">MOVIES</h3>
                    </div>
                </div>
       </content>
     </body>
 </html>
