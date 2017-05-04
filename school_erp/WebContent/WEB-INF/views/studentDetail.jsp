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
                                    <h2><i class="fa fa-graduation-cap"></i> ${student.firstName } ${student.middleName } ${student.lastName }	</h2>
									<div style="float:right;">
											<button type="button" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> Report Card</button>
											<button type="button" class="btn btn-info btn-sm"><i class="fa fa-plus"></i> Attendance</button>
											<button type="button" class="btn btn-warning btn-sm"><i class="fa fa-plus"></i> Add Branch</button>
											 <a href="${pageContext.servletContext.contextPath}/executive/student-view">
											<button type="button" class="btn btn-danger btn-sm"><i class="fa fa-angle-left"></i> Back</button>
											</a>
									</div>
                                    <div class="clearfix"></div>
                                </div>
								<div class="x_content">

                                    <div class="col-md-3 col-sm-3 col-xs-12 profile_left">
                                        <div class="profile_img">
                                            <!-- end of image cropping -->
                                            <div id="crop-avatar">
                                                <!-- Current avatar -->
                                                <div class="avatar-view" title="" data-original-title="Change the avatar" aria-describedby="tooltip48219">
                                                    <img src="${pageContext.servletContext.contextPath}/resources/images/student.jpg" alt="Avatar">
                                                </div>
                                            </div>
                                            <!-- end of image cropping -->

                                        </div>
                                        <h4>${student.firstName } ${student.middleName } ${student.lastName }  <button type="button" class="btn btn-info btn-xs">Active</button></h4>
	                                       

                                    </div>
                                    <div class="col-md-9 col-sm-9 col-xs-12">

						<div class="row">
                        <!--  Tab Menu -->
                        <div class="col-md-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2><i class="fa fa-bars"></i> Student Details</h2>
                                    <ul class="nav navbar-right panel_toolbox">
                                        <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                                            <ul class="dropdown-menu" role="menu">
                                                <li><a href="#">Settings 1</a>
                                                </li>
                                                <li><a href="#">Settings 2</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a class="close-link"><i class="fa fa-close"></i></a>
                                        </li>
                                    </ul>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">

                                    <div class="" role="tabpanel" data-example-id="togglable-tabs">
                                        <ul id="myTab1" class="nav nav-tabs bar_tabs right" role="tablist">
                                            <li role="presentation" class="active"><a href="#tab_content11" id="home-tabb" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true">Home</a>
                                            </li>
                                            <li role="presentation" class=""><a href="#tab_content22" role="tab" id="profile-tabb" data-toggle="tab" aria-controls="profile" aria-expanded="false">Contact</a>
                                            </li>
                                            <li role="presentation" class=""><a href="#tab_content33" role="tab" id="profile-tabb3" data-toggle="tab" aria-controls="profile" aria-expanded="false">Address</a>
                                            </li>
                                        </ul>
                                        <div id="myTabContent2" class="tab-content">
                                            <div role="tabpanel" class="tab-pane fade active in" id="tab_content11" aria-labelledby="home-tab">
                                                <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terr.</p>
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="tab_content22" aria-labelledby="profile-tab">
                                 				  <div class="col-md-4">
	                                  				  	<table class="table table-striped">
	                                  				  		<tr bgcolor="#ccc">
	                                  				  			<td colspan="2">Student Contact</td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td><i class="fa fa-phone-square"></i> Mobile </td>
	                                  				  			<td>: ${student.contact.mobile} </td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td><i class="fa fa-envelope"></i> Email </td>
	                                  				  			<td>: ${student.contact.email} </td>
	                                  				  		</tr>
	                                  				  	</table>
                                  				  </div>   
                                  				  <div class="col-md-6">
	                                  				  	<table class="table table-striped">
	                                  				  		<tr bgcolor="#ccc">
	                                  				  			<td colspan="2">Contact Person</td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td><i class="fa fa-user"></i> Full Name </td>
	                                  				  			<td>: ${student.contactPerson.fullName} </td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td><i class="fa fa-phone-square"></i> Mobile </td>
	                                  				  			<td>: ${student.contactPerson.contact.mobile} </td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td><i class="fa fa-envelope"></i> Email </td>
	                                  				  			<td>: ${student.contactPerson.contact.email} </td>
	                                  				  		</tr>
	                                  				  	</table>
                                  				  </div>                                  				  
                                            </div>
                                            <div role="tabpanel" class="tab-pane fade" id="tab_content33" aria-labelledby="profile-tab">
                                  				  <div class="col-md-4">
	                                  				  	<table class="table table-bordered">
	                                  				  		<tr bgcolor="#ccc">
	                                  				  			<td>Parmanent Address</td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td>
																		<i class="fa fa-chevron-right"></i>House No :  <br>
																		<i class="fa fa-chevron-right"></i>Street : <br>
																		<i class="fa fa-chevron-right"></i>Village/Area: <br>
																		<i class="fa fa-chevron-right"></i>Pin code : <br>
																		<i class="fa fa-chevron-right"></i>city : 
																</td>
	                                  				  		</tr>
	                                  				  	</table>
                                  				  </div>                                 				 
                                  				  <div class="col-md-4">
	                                  				  	<table class="table table-bordered">
	                                  				  		<tr bgcolor="#ccc">
	                                  				  			<td>Current Address</td>
	                                  				  		</tr>
	                                  				  		<tr>
	                                  				  			<td>
																		<i class="fa fa-chevron-right"></i>House No :  <br>
																		<i class="fa fa-chevron-right"></i>Street : <br>
																		<i class="fa fa-chevron-right"></i>Village/Area: <br>
																		<i class="fa fa-chevron-right"></i>Pin code : <br>
																		<i class="fa fa-chevron-right"></i>city : 
																</td>
	                                  				  		</tr>
	                                  				  	</table>
                                  				  </div>
                                             </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
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