<%@ include file="../include/header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Study Mate</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="stylesheet" href="../../resources/bootstrap1/simplex/bootstrap.css" media="screen">
    <link rel="stylesheet" href="../../resources/bootstrap1/assets/css/custom.min.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../bower_components/html5shiv/dist/html5shiv.js"></script>
      <script src="../bower_components/respond/dest/respond.min.js"></script>
    <![endif]-->
    <script>

     var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-23019901-1']);
      _gaq.push(['_setDomainName', "bootswatch.com"]);
        _gaq.push(['_setAllowLinker', true]);
      _gaq.push(['_trackPageview']);

     (function() {
       var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
       ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
       var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
     })();

    </script>
  </head>
  
  <body>
     <!-- Forms
   ================================================== -->
      
   <div class="container">
   
      <div class="bs-docs-section">
        <div class="row">
          <div class="col-lg-12">
            <div class="page-header">
              <h1 id="forms">로그인</h1>
            </div>
          </div>
        </div>

        <div class="row">
          
          <div class="col-lg-4 col-lg-offset-1">

              <form class="bs-component">
               
                <div class="form-group">
                  <label class="control-label" for="inputDefault">ID</label>
                  <input type="text" class="form-control" id="loginId" placeholder="Input Id">
                </div>
                
                  <div class="form-group">
                    <label for="inputPassword" class="control-label">password</label>
                      <input type="password" class="form-control" id="password" placeholder="Input Password">
                  </div>
				
				 <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-3">
                      <button type="submit" class="btn btn-primary">join</button>
                      <button type="submit" class="btn btn-primary">login</button>
                    </div>
                  </div>

              </form>

          </div>
        </div>
      </div>
   
    </div>
  
 </body>
</html>
  
  