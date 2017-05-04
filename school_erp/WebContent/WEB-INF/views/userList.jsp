<%@ include file="genericImports.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="staticImports.jsp" %>
    <title><%@ include file="title.jsp" %></title>
</head>
<body class="nav-sm">
    <div class="container body">
        <div class="main_container">
            <div class="col-md-3 left_col">
                <div class="left_col scroll-view">
					<%@ include file="leftMenu.jsp" %>
                </div>
            </div>
            <div class="top_nav">
				<%@ include file="topMenu.jsp" %>
            </div>
			<div class="right_col" role="main">
                <div class="data_col">
                    <div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="x_panel">	
								<div class="x_title">
                                    <h2><i class="fa fa-users"></i> Users</h2>
									<div style="float:right;">
	    		                        <a href="user-add">
											<button type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add User</button>
										</a>
	    		                        <a href="user-type-add">
											<button type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add User Type</button>
										</a>
									</div>
                                    <div class="clearfix"></div>
                                </div>
                         <div class="row">
						<div class="col-md-8 col-sm-8 col-xs-12" style="min-height:450px;">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Added Users <small>Bordered table subtitle</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table class="table table-bordered" id="listTable"	>
                                        <thead>
                                            <tr bgcolor="#ccc">
                                                <th>#</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>User Type</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="user" items="${users}" varStatus="sno">
                                        
                                            <tr>
                                                <th scope="row">${sno.index+1 }</th>
                                                <td>${user.firstName } ${user.lastName }</td>
                                                <td>${user.userId }</td>
                                                <td>${user.userType.name }</td>
                                                <td><a href="user-detail/${user.id }"><i class="fa fa-bars"></i></a></td>
                                            </tr>
                                          </c:forEach>
                                        </tbody>
                                    </table>

                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>User Types <small>basic table subtitle</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr bgcolor="#ccc">
                                                <th>#</th>
                                                <th>Access Type</th>
                                                <th>Code</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        	<c:forEach var="userType" items="${userTypes}" varStatus="sno">
                                            <tr>
                                                <th scope="row">${sno.index+1}</th>
                                                <td>${userType.name}</td>
                                                <td>${userType.code}</td>
                                            </tr>
                                           </c:forEach>	
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>	
                    </div>
							</div>
						</div>
                    </div>
                </div>
                <footer>
					<%@ include file="footer.jsp" %>
                </footer>
            </div>
        </div>
    </div>
</body>
</html>