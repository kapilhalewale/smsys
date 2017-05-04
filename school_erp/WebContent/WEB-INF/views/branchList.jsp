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
                                    <h2><i class="fa fa-sitemap"></i> Branches</h2>
									<div style="float:right;">
	    		                        <a href="branch-add">
											<button type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Add Branch</button>
										</a>
									</div>
                                    <div class="clearfix"></div>
                                </div>
								<div class="x_content">
										<table id="listTable" class="table table-striped jambo_table">
                                        <thead>
												<tr>
													<th style="width: 5%" class="no-sort">#</th>
													<th style="width: 25%" class="no-sort">Branch Name</th>
													<th style="width: 20%" class="no-sort">Group</th>
													<th style="width: 10%" class="no-sort">State</th>
													<th style="width: 10%" class="no-sort">City</th>
	                                                <th class="no-sort"  style="width: 10%">Action</th>
	                                                <!--  class="no-link last" -->
	                                            </tr>
                                        </thead>
                                        <tbody>
										<c:forEach var="branch" items="${branches}" varStatus="sno">
													<tr class="pointer">
														<td class="">${sno.index+1}</td>
														<td class="">${branch.name}</td>
														<td class="">${branch.group.name}</td>
														<td class="">${branch.state.name}</td>
														<td class="">${branch.city.name}</td>
														<td class="last" align="right">
															<a href="Client/EditClient/${branch.id}" style="margin-bottom:0px;" class="btn btn-dark btn-xs"><i class="fa fa-pencil"></i> Edit</a>
															<a href="Client/ClientDetails/${branch.id}" style="margin-bottom:0px;" class="btn btn-dark btn-xs"><i class="fa fa-folder"></i> View</a>
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