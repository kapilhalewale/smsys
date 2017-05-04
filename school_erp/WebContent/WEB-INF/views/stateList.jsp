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
                                    <h2>States</h2>
									<div style="float:right;">
	    		                        <a href="state-add">
											<button type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add State</button>
										</a>
									</div>
                                    <div class="clearfix"></div>
                                </div>
								<div class="x_content">
										<table id="listTable" class="table table-bordered jambo_table">
                                        <thead>
												<tr>
													<th style="width: 3%" class="no-sort">#</th>
													<th style="width: 47%" class="no-sort">State Name</th>
													<th style="width: 20%" class="no-sort">Country</th>
	                                                <th class="no-sort"  style="width: 10%">Action</th>
	                                                <!--  class="no-link last" -->
	                                            </tr>
                                        </thead>
                                        <tbody>
										<c:forEach var="state" items="${states}">
													<tr class="pointer">
														<td class="">${state.id}</td>
														<td class="">${state.name}</td>
														<td class="">${state.country.name}</td>
														<td class="last" align="right">
															<a href="<s:property value='basePath' />/Client/EditClient/<s:property value='id' />" style="margin-bottom:0px;" class="btn btn-dark btn-xs"><i class="fa fa-pencil"></i> Edit</a>
															<a href="<s:property value='basePath' />/Client/ClientDetails/<s:property value='id' />" style="margin-bottom:0px;" class="btn btn-dark btn-xs"><i class="fa fa-folder"></i> View</a>
														</td>
													</tr>
										</c:forEach>
	                                      </tbody>
                                    </table>
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