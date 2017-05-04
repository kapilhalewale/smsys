<%@ include file="genericImports.jsp" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="staticImports.jsp" %>
    <title><%@ include file="title.jsp" %></title>

    <!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
<style>
	#errorBlock{
		position:absolute;
		font-size:18px;
		color:red;
		top:450px;
		left:500px;
		font-family:calibri;
	}
</style>
<c:if test="${SPRING_SECURITY_LAST_EXCEPTION !=null  }">
	<div id='errorBlock'>
		Your login attempt was not successfull <br>
		${sesionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
	</div>
</c:if>
</head>
<body style="background:#F7F7F7;" onLoad="document.getElementById('usernameId').focus()">
    <div class="">
        <div id="wrapper">
            <div id="login" class="animate form">
				<div style=width:400px '>
					<h3>Academic Management Application</h3>
				</div>				
                <section class="login_content">
					<div>
						<p><s:action error escape="false"/></p>
					</div>					
					<form id="SaveMasterFormValueId" name='f' method="post" action="j_spring_security_check" class="form-horizontal form-label-left" data-parsley-no-validate>
                        <h1>Login</h1>
                        <div>
							<input type="text"  id="usernameId" name="j_username" maxlength="100" placeholder="Email" cssClass="form-control col-md-7 col-xs-12" />
                        </div>
                        <div>
							<input type="password"  id="passwordId" name="j_password" maxlength="100" placeholder="Password" cssClass="form-control col-md-7 col-xs-12" />
                        </div>
                        <div>
							<button type="submit" class="btn btn-dark submit">Log in</button>
                            <a class="reset_pass" href="#">Forgot password</a>                   
						</div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <p>&copy;&nbsp;2016 Reserved</p>
                            </div>
                        </div>
					</form>
                </section>
            </div>
        </div>
    </div>
</body>
</html>