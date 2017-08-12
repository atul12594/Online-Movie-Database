<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title></title>
                <meta name="layout" content = "design" />
                 <style>

                  body {
                        background-image: url('${resource(dir: "images", file: "list.jpg")}');
                        background-repeat: no-repeat;
                        background-size: cover;
                  }
                 .box {
                        margin-top: 80px;
                 }
                 p {
                    font-size:16px;
                }
                #p1 {
                    font-size:14px;
                }
                 .box .box1 {
                    color:white;
                 }
                 .span {
                 background-color:darkgoldenrod;
                 }
                 </style>

    </head>
    <body>
      <content tag="header">
            <strong>Movie Details</strong>
      </content>
      <content tag = "mainContent">
           <g:form controller="movie" action="rating" method="post" class="form-horizontal">
                <g:if test="${flash.message}">
                            <div class="alert alert-success>${flash.message}</div>
                </g:if>
                <div class="box col-sm-offset-1 ">
                <g:if test="${currentUser.id == show.user.id}">
                    <div class = "box1 col-sm-offset-9 col-xs-offset-9">
                         <div class = "col-sm-1 col-md-1 col-xs-1">
                            <g:link controller="movie" action="edit" id="${show.id}" >
                                <i class = "fa fa-pencil fa-fw fa-2x" style="color:white;"></i>
                            </g:link>
                            <p style="color:white;">Edit</p>
                         </div>
                         <div class = "col-sm-1 col-sm-offset-2 col-md-offset-2 col-md-1 col-xs-offset-2 col-xs-1">
                            <g:link controller="movie" action="delete" id="${show.id}" onclick="return confirm('Are you sure???')">
                                 <i class = "fa fa-trash fa-fw fa-2x" style="color:white;"></i>
                            </g:link>
                            <p style="color:white;">Delete</p>
                         </div>
                    </div>
                 </g:if>

                 <g:if test="${show}">
                     <div class="row">
                          <div class="col-sm-4 col-md-4" style="color:khaki;">
                               <p><strong style="color:white;">Title:</strong> ${show.title}</p> <br/>
                          </div>
                     </div>
                     <div class="row">
                           <div class="col-sm-4 col-md-4" style="color:khaki;">
                                <p><strong style="color:white;">Genre:</strong> ${show.genre}</p><br/>
                           </div>
                     </div>

                     <div class="row">
                           <div class="col-sm-4 col-md-4" style="color:khaki;">
                                 <p><strong style="color:white;">Director:</strong> ${show.director}</p><br/>
                           </div>
                     </div>
                     <div class="row">
                            <div class="col-sm-4 col-md-4" style="color:khaki;">
                                  <p><strong style="color:white;">Year Of Release:</strong> ${show.yearofrelease}</p><br/>
                            </div>
                     </div>
                     <div class="row">
                             <div class="col-sm-4 col-md-4" style="color:khaki;">
                                     <p><strong style="color:white;">Certification:</strong> ${show.type}</p><br/>
                             </div>
                             <div class="col-sm-offset-5 col-sm-2 col-md-2 col-xs-4" style="color:white;">
                               <p><strong style="color:;">Rating:</strong>
                                     <select name="rating" class="form-control" placeholder="Give Rating." required="required" />
                                                <option>--select--</option>
                                                <option value="1"><span style="background-color:goldenrod">☆</span> 1</option>
                                                <option value="2"><span>☆</span> 2</option>
                                                <option value="3"><span>☆</span> 3</option>
                                                <option value="4"><span>☆</span> 4</option>
                                                <option value="5"><span>☆</span> 5</option>
                                                <option value="6"><span>☆</span> 6</option>
                                                <option value="7"><span>☆</span> 7</option>
                                                <option value="8"><span>☆</span> 8</option>
                                                <option value="9"><span>☆</span> 9</option>
                                                <option value="10"><span>☆</span> 10</option>
                                     </select></p>
                                     <g:submitButton name="Submit" value="Submit" class="btn btn-success"></g:submitButton>
                             </div>
                             <input type="hidden" id="id" name="id" value="${show.id}">
                     </div></br>
                     <div class="row">
                             <div class="panel panel-info col-sm-4 col-md-6 col-lg-12" style="padding: 0;">
                                 <div class="panel-heading" style="background-color:black;"><h4><strong>Description:</strong></h4> </div>
                                    <div class="panel-body" style="background-color:darkslategray;">
                                        <p id="p1" style="word-wrap: break-word; color:white;"> ${show.summary}</p><br/>
                                     </div>
                             </div>
                     </div>
                 </g:if>
            </div>
           </g:form>
      </content>
    </body>
</html>