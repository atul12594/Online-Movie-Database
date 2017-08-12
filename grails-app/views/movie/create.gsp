
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
                    margin-top:50px;
                 }
                 .b1 {
                    margin-left: 50px;
                 }
                 .b2 {
                    margin-left: 40px;
                 }
                 </style>

    </head>
    <body>
      <content tag="header">
              <strong>Add New Movie Details</strong>
      </content>
      <content tag = "mainContent">
       <g:if test="${flash.message}">
               <div class="alert alert-error>${flash.message}</div>
       </g:if>
            <div class="box">
                <g:form name="my_form" controller = "movie" action = "save" method="post" class="form-horizontal">
                    <div class="form-group">
                        <label for="newtitle" class="col-sm-2 col-sm-offset-3" style="color:white;">Title</label>
                            <div class="col-sm-4">
                                 <g:textField name="newtitle" class="form-control"
                                     placeholder="Enter the title." required="required" autofocus = ""/>

                             </div>
                    </div>
                    <div class="form-group">
                         <label for="newgenre" class="col-sm-2 col-sm-offset-3" style="color:white;">Genre</label>
                              <div class="col-sm-4">
                                   <g:textField name="newgenre" class="form-control"
                                       placeholder="Enter the genre." required="required"/>

                              </div>
                    </div>
                    <div class="form-group">
                        <label for="newdir" class="col-sm-2 col-sm-offset-3" style="color:white;">Director</label>
                            <div class="col-sm-4">
                                <g:textField name="newdir" class="form-control"
                                     placeholder="Enter the name of director." required="required"/>
                            </div>
                    </div>
                    <div class="form-group">
                         <label for="newyor" class="col-sm-2 col-sm-offset-3" style="color:white;">Date of Release</label>
                             <div class="col-sm-4">
                                  <input type="date" name="newyor" class="form-control"
                                             placeholder="Enter the year of release." required="required" />
                             </div>
                    </div>
                    <div class="form-group">
                         <label for="certificate" class="col-sm-2 col-sm-offset-3" style="color:white;">Certificate Type</label>
                              <div class="col-sm-4">
                                    <select name="certificate" class="form-control"
                                               placeholder="Enter the certificate type." required="required" />
                                         <option>--select</option>
                                         <option value="1">U</option>
                                         <option value="2">U/A</option>
                                         <option value="3">A</option>
                                    </select>
                              </div>
                    </div>
                    <div class="form-group">
                         <label for="newsummary" class="col-sm-2 col-sm-offset-3" style="color:white;">Summary</label>
                              <div class="col-sm-4">
                                   <g:textArea name="newsummary" class="form-control" rows="5" cols="40"
                                    placeholder="Add the description here..." id="textArea" onKeyUp="countCharacter()"
                                    required="required" />
                              </div>
                    </div>
                    <div class="col-sm-offset-5 ">
                               <p id="textBox" style="color:red;"></p>
                    </div>
                    <div class="col-sm-offset-5 ">
                            <g:submitButton name="submit" value="Submit" class="col-sm-2 btn btn-lg btn-success b1"></g:submitButton>
                            <g:link controller = "movie" action = "details">
                                <button type="button" class="col-sm-2  btn btn-lg btn-primary b2">Cancel</button>
                            </g:link>
                    </div>
                </g:form>
            </div>
        </content>
    </body>
</html>
