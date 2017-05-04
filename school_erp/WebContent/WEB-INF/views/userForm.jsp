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
                                    <h2>Add&nbsp;User</h2>
									<div style="float:right;">
										<a href="user-view">
											<button type="button" class="btn btn-danger btn-xs"><i class="fa fa-angle-left"></i> Back</button>
										</a>	
									</div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
										<form:form method="post" action="user-save" modelAttribute="user">   
													<div class="form-group col-md-12">
														<div class="col-md-6">
																<label class="control-label col-md-3 col-sm-3 ">Select Branch</label>
																	<div class="col-md-6 col-sm-6">
																		<form:select path="branch.id" cssClass="form-control"  items="${branches}" itemValue="id"  itemLabel="name" ></form:select>
																	</div>
														</div>
														<div class="col-md-6 ">
																<label class="control-label col-md-3 col-sm-3">First  Name</label>
																	<div class="col-md-6 col-sm-6">
																		<form:input path="firstName" cssClass="form-control"  />
																	</div>
															</div>
														</div>
														<div class="form-group col-md-12">
															<div class="col-md-6 ">
																	<label class="control-label col-md-3 col-sm-3">Middle  Name</label>
																		<div class="col-md-6 col-sm-6">
																			<form:input path="middleName" cssClass="form-control"  />
																		</div>
																</div>
																<div class="col-md-6 ">
																		<label class="control-label col-md-3 col-sm-3">Last  Name</label>
																			<div class="col-md-6 col-sm-6">
																				<form:input path="lastName" cssClass="form-control"  />
																			</div>
																	</div>
															</div>

														<div class="form-group col-md-12">
															<div class="col-md-6 ">
																	<label class="control-label col-md-3 col-sm-3">User Id</label>
																		<div class="col-md-6 col-sm-6">
																			<form:input path="userId" cssClass="form-control"  />
																		</div>
																</div>
																<div class="col-md-6 ">
																		<label class="control-label col-md-3 col-sm-3">Password</label>
																			<div class="col-md-6 col-sm-6">
																				<form:input path="password" cssClass="form-control"  />
																			</div>
																	</div>
															</div>

														<div class="form-group col-md-12">
																<div class="col-md-6">
																		<label class="control-label col-md-3 col-sm-3 ">Select User Types</label>
																			<div class="col-md-6 col-sm-6">
																				<form:select path="userType.id" cssClass="form-control"  items="${userTypes}" itemValue="id"  itemLabel="name" ></form:select>
																			</div>
																</div>
															</div>													
														<div class="form-group col-md-12">
															<div class="ln_solid"></div>
																<div class="col-md-6 col-sm-6">
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