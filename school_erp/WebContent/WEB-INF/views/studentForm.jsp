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
                            <div class="x_panel" style="min-height:520px;">
								<div class="x_title">
                                    <h2><i class="fa fa-user" ></i> Add&nbsp;Student</h2>
									<div style="float:right;">
										<a href="student-view">
											<button type="button" class="btn btn-danger btn-xs"><i class="fa fa-angle-left"></i> Back</button>
										</a>	
									</div>
                                    <div class="clearfix"></div>
                                </div>
									<div class="x_content">
										<!-- Smart Wizard -->
									 <form:form method="post" action="student-save" modelAttribute="student" class="form-horizontal form-label-left" id="lck">
										<div id="wizard" class="form_wizard wizard_horizontal">
											<ul class="wizard_steps">
												<li>
													<a href="#step-1">
														<span class="step_no">1</span><span class="step_descr">Student Details</span>
													</a>
												</li>
												<li>
													<a href="#step-2">
														<span class="step_no">2</span><span class="step_descr">Student Address</span>
													</a>
												</li>
												<li>
													<a href="#step-3">
														<span class="step_no">3</span> <span class="step_descr"> Student Contact</span>
													</a>
												</li>
												<li>
													<a href="#step-4">
														<span class="step_no">4</span> <span class="step_descr">Contact Person</span>
													</a>
												</li>
											</ul>
											<div id="step-1">
												<h2 class="StepTitle">Student Details</h2>
		                                        <div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
		                                        	<label>Title</label>
		                                        	<input class="form-control"	/>
		                                        </div>
		                                        
		                                         <div class="col-md-3 col-sm-3  form-group has-feedback">
		                                        	<label>First Name</label>
                                 				   <form:input path="firstName"  placeholder="First Name" class="form-control"/>
		                                        </div>

		                                        <div class="col-md-3 col-sm-3 form-group has-feedback">
		                                        	<label>Middle Name</label>
                                 				   <form:input path="middleName"  placeholder="Middle Name" class="form-control"/>
		                                        </div>

		                                         <div class="col-md-3 col-sm-3 form-group has-feedback">
		                                        	<label>Last  Name</label>
                                 				   <form:input path="lastName"  placeholder="Last Name" class="form-control"/>
			                                        </div>		                                        
		                                        <div class="col-md-3 col-sm-3 form-group has-feedback">
		                                        	<label>Father Name</label>
                                 				   <form:input path="fatherName"  placeholder="Father Name" class="form-control"/>
		                                        </div>

		                                        <div class="col-md-3 col-sm-3 form-group has-feedback">
		                                        	<label>Mother Name</label>
                                 				   <form:input path="motherName"  placeholder="Mother Name" class="form-control"  />
		                                        </div>		
		                                        <div class="col-md-3 col-sm-3 form-group has-feedback">
		                                        	<label>Gender</label><br>
		                                        	<form:radiobutton path="gender" value="Male" class="flat" id="genderM" />&nbsp;Male
													<form:radiobutton path="gender" value="Female"  class="flat" id="genderF"/>&nbsp;Female

		                                        </div>
		                                        
		                                         <div class="col-md-3 col-sm-3 form-group has-feedback">
		                                        	<label>Date  Of Birth</label>
                                 				   <form:input path="dateOfBirth"  placeholder="Date Of Birth" class="form-control"  id="birthday" />
		                                        </div>				    
											</div>
											<div id="step-2">
												<h2 class="StepTitle">Student Address</h2>
													<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>Door Number</label>
													   <form:input path="address.doorNumber"  placeholder="Door Number" class="form-control"/>
													</div>                                        
													 <div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>Street</label>
													   <form:input path="address.street"  placeholder="Street" class="form-control"/>
													</div>
													
													 <div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>Villege/Town/Area</label>
													   <form:input path="address.villege"  placeholder="Villege/Town/Area" class="form-control"/>
													</div>
													
													 <div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>Taluka</label>
													   <form:input path="address.taluka"  placeholder="Taluka" class="form-control"/>
													</div>					

													<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>Pin Number</label>
														<form:input path="address.pin"  placeholder="Pin Number" class="form-control"/>
													</div>                                        
													
													<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>City</label>
														<form:select path="address.city.id" cssClass="form-control"  items="${cities}" itemValue="id"  itemLabel="name" title="Cities" ></form:select>
													</div>  
													
													<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>State</label>
														<form:select path="address.state.id" cssClass="form-control"  items="${states}" itemValue="id"  itemLabel="name" ></form:select>
													</div>  
													
													<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
														<label>Country</label>
															<form:select path="address.country.id" cssClass="form-control"  items="${countries}" itemValue="id"  itemLabel="name" ></form:select>
													</div>  
											</div>
											<div id="step-3">
												<h2 class="StepTitle">Student Contact</h2>
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>Mobile Number</label>
													<form:input path="contact.mobile"  placeholder="Mobile Number" class="form-control"/>
												</div>                                        
												
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>Email</label>
													<form:input path="contact.email"  placeholder="Email Address" class="form-control"/>
												</div>                                        
												
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>House Mobile</label>
													<form:input path="contact.houseMobile"  placeholder="House Mobile" class="form-control"/>
												</div>                                        

											</div>
											<div id="step-4">
												<h2 class="StepTitle">Contact Person</h2>
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>Full Name</label>
												   <form:input path="contactPerson.fullName"  placeholder="Full Name" class="form-control"/>
												</div>                                        
												
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>Mobile Number</label>
												   <form:input path="contactPerson.contact.mobile"  placeholder="Mobile Number" class="form-control"/>
												</div>                                        
												
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>Email Address</label>
												   <form:input path="contactPerson.contact.email"  placeholder="Email Address" class="form-control"/>
												</div>                                        
												
												<div class="col-md-3 col-sm-3 col-xs-12 form-group has-feedback">
													<label>House Mobile</label>
												   <form:input path="contactPerson.contact.houseMobile"  placeholder="House Mobile" class="form-control"/>
												</div>
											</div>
											</form:form>
										</div>
										<!-- End SmartWizard Content -->
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


    <script type="text/javascript">
        $(document).ready(function () {
            // Smart Wizard 	
            $('#wizard').smartWizard();

            function onFinishCallback() {
                $('#wizard').smartWizard('showMessage', 'Finish Clicked');
                alert('Finish Clicked');
            }
        });

        $(document).ready(function () {
            // Smart Wizard	
            $('#wizard_verticle').smartWizard({
                transitionEffect: 'slide'
            });

        });
    </script>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $('#birthday').daterangepicker({
                                singleDatePicker: true,
                                calender_style: "picker_4"
                            }, function (start, end, label) {
                                console.log(start.toISOString(), end.toISOString(), label);
                            });
                        });
                    </script>
</body>
</html>