<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title></title>
                <meta name="layout" content = "design" />
                    <style>

                    .p1 {
                           font-size:30px;
                           text-align: center;
                     }
                 </style>
    </head>
    <body>
       <content tag="header" >
               <strong>List of Movies</strong>
       </content>
       <content tag = "mainContent">
       <g:form controller = "movie" action = "details" >
            <g:if test="${flash.message}">
                        <div class = "alert alert-success" role = "status">${flash.message}</div>
            </g:if>
                     <div class="col-sm-offset-8 col-sm-2 col-md-2 col-xs-8" style="margin-bottom:10px;">
                          <select name="newsFeeds" class="form-control" style=" background-color:darkslategray; color:white;">
                             <option value="0"> Select Option </option>
                             <option value="1" id=1>Hindi</option>
                             <option value="2" id=2>English</option>
                             <option value="3" id=3>Top Rated</option>
                          </select>
                     </div>
                     <div class=" col-sm-1 col-md-1 col-xs-1" style="padding:0px; margin-top:3px; margin-bottom:5px;">
                             <g:submitButton name="submit" value="Submit" class="btn btn-sm" style=" background-color:black; color:white;"/>
                     </div>
            <g:if test = "${viewAll}">
             <table class="table table-bordered table-responsive" >
               <thead style = "background-color: black">
                    <tr style="color:white;">
                         <th>Sl. No. & Title</th>
                         <th>Genre</th>
                         <th>Rating</th>
                    </tr>
               </thead>
               <tbody >
                     <g:each in="${viewAll}" var = "view" status = "i" >
                         <tr style="color:white;">
                            <td>${i+1}. <g:link style = "color:white;" controller="movie" action="show" id= "${view.id}"> ${view.title} (${view.yearofrelease}) </g:link>
                            </td>
                            <td>
                                ${view.genre}
                            </td>
                            <td>
                                <i class = "fa fa-star " style="color:goldenrod"></i>   ${view.rating}
                            </td>
                         </tr>
                     </g:each>
               </tbody>
             </table>
            </g:if>
        </g:form>
       </content>
    </body>
</html>



