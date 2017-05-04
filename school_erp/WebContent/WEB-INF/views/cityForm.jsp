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
                                    <h2>Add&nbsp;City</h2>
									<div style="float:right;">
										<a href="city-view">
											<button type="button" class="btn btn-danger btn-xs"><i class="fa fa-angle-left"></i> Back</button>
										</a>	
									</div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
								<form:form method="post" action="city-save" modelAttribute="city" cssClass="form-horizontal form-label-left">    
												<div class="form-group">
														<label class="control-label col-md-3 col-sm-3 ">Select State</label>
															<div class="col-md-3 col-sm-3">
																<form:select path="state.id" cssClass="form-control"  items="${states}" itemValue="id"  itemLabel="name" >
																	</form:select>
															</div>
														<label class="control-label col-md-3 col-sm-3">City Name</label>
															<div class="col-md-3 col-sm-3">
																<form:input path="name" cssClass="form-control"  />
															</div>
													</div>
											<div class="ln_solid"></div>
											<div class="form-group">
												<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
													<button id="submit-all" type="submit" class="btn btn-success submitRecord">Submit</button>
												</div>
											</div>
							</form:form>
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