<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title></title>
    <meta name="layout" content = "design" />
    <style>
        .box {
            font-size:18px;
        }
    </style>

</head>
<body>
  <content tag="header">
          <strong>Movie Details</strong>
  </content>
  <content tag = "mainContent">
        <div class="box">
            <g:form controller = "movie" action = "update" method="post" class="form-horizontal">
                <div class="form-group">
                    <label for="newtitle" class="col-sm-2 col-sm-offset-3" style="color:white;">Title</label>
                        <div class="col-sm-4">
                             <g:textField name="newtitle" class="form-control"
                                 placeholder="Enter the title."  value="${edit.title}" required="required" autofocus=""/>
                         </div>
                </div>

                <div class="form-group">
                     <label for="newgenre" class="col-sm-2 col-sm-offset-3" style="color:white;">Genre</label>
                          <div class="col-sm-4">
                               <g:textField name="newgenre" class="form-control"
                                   placeholder="Enter the genre." value="${edit.genre}" required="required"/>
                          </div>
                </div>

                <div class="form-group">
                    <label for="newdir" class="col-sm-2 col-sm-offset-3" style="color:white;">Director</label>
                        <div class="col-sm-4">
                            <g:textField name="newdir" class="form-control"
                                 placeholder="Enter the name of director." value="${edit.director}" required="required"/>
                        </div>
                </div>

                <div class="form-group">
                     <label for="newyor" class="col-sm-2 col-sm-offset-3" style="color:white;">Year of Release</label>
                         <div class="col-sm-4">
                              <g:textField name="newyor" class="form-control"
                                         placeholder="Enter the year of release." value="${edit.yearofrelease}" required="required"/>
                         </div>
                </div>
                <div class="form-group">
                     <label for="newcertification" class="col-sm-2 col-sm-offset-3" style="color:white;">Certificate Type</label>
                           <div class="col-sm-4">
                                <select name="certificate" class="form-control"
                                               placeholder="Enter the certificate type."  required="required" />
                                  <option>${edit.type}</option>
                                  <option value="1">U</option>
                                  <option value="2">U/A</option>
                                  <option value="3">A</option>
                                </select>
                            </div>
                </div>
                <div class="form-group">
                     <label for="newsummary" class="col-sm-2 col-sm-offset-3" style="color:white;">Summary</label>
                           <div class="col-sm-4">
                                      <g:textArea name="newsummary" class="form-control" value="${edit.summary}"
                                      rows="5" cols="40" id="textArea" onKeyUp="countCharacter()" />
                            </div>
                </div>
                <div class="col-sm-offset-5 col-sm-4">
                    <p id="textBox" style="color:red;"></p>
                </div>
                <g:hiddenField  name = "id" value= "${edit.id}"></g:hiddenField>
                <div class="col-sm-offset-5 col-sm-4">
                        <g:submitButton name="submit" value="Submit" class="btn btn-lg btn-success btn-block"></g:submitButton>
                </div>
             </g:form>
        </div>
    </content>
</body>
</html>
