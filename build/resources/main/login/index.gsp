<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title></title>
            <meta name="layout" content = "login_signup" />
                         <style>

                         h2 {
                            margin-left:600px;
                            margin-top:50px;
                         }
                         .box {
                                margin-top: 20px;
                                border:1px solid white;
                                border-radius: 20px;
                                color:white;
                         }
                         .alert {
                                 font-size:
                             }
                          .p1 {
                                font-size:20px;
                                background-color: #000080;
                                color: white;
                          }
                         </style>
     </head>
    <body>
        <content tag="header">
                   <strong>Log In</strong>
        </content>
        <content tag = "mainContent">
              <g:if test='${params.message}'>
                      <div class="alert alert-danger login_message">${params.message}</div>
              </g:if>
              <g:elseif test = "${flash.message}">
                    <div class="alert alert-success">${flash.message}</div>
              </g:elseif>
                <div class="box col-md-offset-3 col-md-6 col-xs-12">
                     <g:form controller = "login" action="authenticate" method="post" >

                         <div class="form-group form-group-lg" style="padding-top:4%;">
                             <label for="username" class="col-sm-3 col-sm-offset-1 control-label"
                                                                        style="margin-top: 10px;">Username</label>
                             <div class=" input-group  col-sm-6 col-xs-12">
                                 <span class="input-group-addon " ><i class="fa fa-user fa-2x"></i></span>
                                      <g:textField name="${usernameParameter ?: 'username'}" id="username" class="form-control"
                                                  placeholder="Enter your username"    required="required" autofocus = "" />
                              </div>
                         </div>
                         <div class="form-group form-group-lg" style="padding-top:4%;">
                              <label for="password" class="col-sm-3 col-sm-offset-1 control-label"
                                                                            style="margin-top: 10px;">Password</label>
                              <div class="input-group col-sm-6">
                                   <span class="input-group-addon " ><i class="fa fa-unlock-alt fa-2x"></i></span>
                                        <g:passwordField name="${passwordParameter ?: 'password'}" id="password" class="form-control"
                                                              placeholder="Enter your password"  required="required"/>
                              </div>
                         </div>

                         <div class = "form-group form-group-lg" style="padding-top:4%;">
                              <div class="col-sm-offset-4 col-sm-6">
                                       <g:submitButton name="submit" value="Log In" class="btn btn-success btn-lg btn-block"></g:submitButton>

                              </div>
                         </div>
                     </g:form>
                     <div class="col-sm-offset-4 col-sm-6" style="padding:1%;">
                       <div><h6 align="center">OR</h6></div>
                           <oauth:connect provider="facebook" id="facebook-connect-link">
                              <button type = "submit" class=" btn-lg btn-block   p1">
                                      <i class="fa fa-facebook-official fa-1x" ></i>  Log In with facebook
                              </button>
                           </oauth:connect>
                     </div>
                </div>
        </content>
    </body
</html>