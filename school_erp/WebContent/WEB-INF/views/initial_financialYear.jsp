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
                                    <h2><i class="fa fa-cogs"></i> Academic Years</h2>
                                    <div style="float:right;">
										  <span class="label label-primary" style="border:1px solid #1A82C3;color:white">1</span>
										  <span class="label" style="border:1px solid #ccc;">2</span>
										  <span class="label" style="border:1px solid #ccc;">3</span>
										  <span class="label" style="border:1px solid #ccc;">4</span>
										  <span class="label" style="border:1px solid #ccc;">5</span>
									</div>	
                                    <div class="clearfix"></div>
                                </div>
							<div class="col-md-4 col-sm-4 col-xs-12">
	                            <div class="x_panel">
	                                <div class="x_title">
	                                    <h2>Academic Years</h2>
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
								<div class="col-md-8 col-sm-8 col-xs-12" style="min-height:450px;">
		                            <div class="x_panel">
		                                <div class="x_title">
		                                    <h2>Add academic year</h2>
					                              <div style="float:right;">
				    		                        <a href="user-add">
														<button type="button" class="btn btn-default btn-sm"><i class="fa fa-plus"></i> Add More</button>
													</a>
												</div>
		                                    <div class="clearfix"></div>
		                                </div>
		                                <div class="x_content">
		                                   <form id="country" class="form-horizontal form-label-left" action="country-save" method="post">    
												<div class="form-group">
														<label class="control-label col-md-3 col-sm-3 col-xs-12">Range</label>
															<div class="col-md-6 col-sm-6 col-xs-12">
																<input id="name" name="name" class="form-control" type="text"  placeholder="Ex: 2017-18">
															</div>
													</div>
												<div class="ln_solid"></div>
												<div class="form-group">
													<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
														<button id="submit-all" type="submit" class="btn btn-success submitRecord">Submit</button>
													</div>
												</div>
											</form>
		                                </div>
		                            </div>
		                        </div>
         					</div>
						</div>
						
						<!--  Bottom buttons  -->
							<div class="x_title">
									<div style="float:right;">
			   		                        <a href="semester-setup">
												<button type="button" class="btn btn-success btn-sm"><i class="fa fa-chevron-right"></i>  Next</button>
										</a>	
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