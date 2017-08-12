<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title></title>

            <meta name="layout" content = "login_signup" />

             <style>
             h2 {
                margin-left:550px;
                margin-top:50px;
             }
             .box {
                     margin-top: 20px;
                     border:1px solid black;
                     border-radius: 20px;
               }
             </style>
</head>

  <body>
    <content tag="header">
        <strong>Register</strong>
    </content>
   <content tag = "mainContent">
    <g:if test="${flash.errmsg}">
              <div class="alert alert-danger">${flash.errmsg}</div>
    </g:if>
        <div class="box col-md-offset-3 col-md-6  col-xs-12">
              <g:form controller = "register" action="save" method="post" class="form-horizontal">

                     <div class="form-group form-group-lg" style="padding-top:4%;">
                           <label for="username" class="col-sm-3 col-sm-offset-1 control-label"
                                                               style="color:white; margin-top: 5px;">Username</label>
                           <div class=" input-group  col-sm-6 col-xs-12">
                               <span class="input-group-addon " ><i class="fa fa-user fa-2x"></i></span>
                               <g:textField name="username" class="form-control"
                                               placeholder="Username" required="required" autofocus="" />
                           </div>
                     </div>
                     <div class="form-group form-group-lg" style="padding-top:4%;">
                           <label for="password" class="col-sm-3 col-sm-offset-1 control-label"
                                                                 style="color:white; margin-top: 5px;">Password</label>
                           <div class="input-group col-sm-6">
                               <span class="input-group-addon"><i class="fa fa-key fa-2x"></i></span>
                               <g:passwordField name="password" class="form-control"
                                                                    placeholder="Password"  required="required"/>
                           </div>
                     </div>

                     <div class = "form-group form-group-lg" style="padding-top:4%;">
                          <div class="col-sm-offset-4 col-sm-6">
                                <g:submitButton name="submit" value="Log In" class="btn btn-success btn-lg btn-block"></g:submitButton>

                          </div>
                     </div>
               </g:form>
         </div>
     </content>
  </body>
</html>