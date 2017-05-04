<%@ include file="genericImports.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="staticImports.jsp" %>
    <title><%@ include file="title.jsp" %></title>
</head>
<body class="nav-md">
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
                                    <h2><i class="fa fa-sitemap"></i> Groups</h2>
									<div style="float:right;">
	    		                        <a href="group-add">
											<button type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Group</button>
										</a>
									</div>
                                    <div class="clearfix"></div>
                                </div>
								<div class="x_content">
								<div class="row">
									<c:forEach var="group" items="${groups}" varStatus="sno">
                                        <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                            <div class="tile-stats">
                                                <div class="icon"><i class="fa fa-sitemap"></i>
                                                </div>
                                                <div class="count">${sno.index+1}</div>
                                                <h3>${group.name}</h3>
                                                <p>${group.country.	name} </p>
                                            </div>
                                        </div>
                                       </c:forEach>
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