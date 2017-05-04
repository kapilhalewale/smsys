<s:set name="userFullname" value="" />
<s:if test="sessionUser != null">
	<s:set name="userFullname" value="sessionUser.name" />
</s:if>
<div class="nav_menu">
	<nav class="" role="navigation">
		<div class="nav toggle">
			<a id="menu_toggle"><i class="fa fa-bars" style="color:#1ABB9C;"></i></a>
			
		</div>
		<ul class="nav navbar-nav navbar-right">
			<li class="">
				<a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
					<strong style="color:#000000;">Welcome</strong>&nbsp;<s:property value="sessionUser.name" />
					<span class="fa fa-angle-down"></span>
				</a>
				<ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
					<li><a href="<s:property value='basePath' />/User/Profile"><i class="fa fa-user pull-right" style="margin-right:0.2em;color:#1ABB9C;"></i>Profile</a></li>
					<li><a href="<s:property value='basePath' />/User/ChangePassword"><i class="fa fa-unlock pull-right" style="margin-right:0.1em;color:#1ABB9C;"></i>Change Password</a></li>
					<li><a href="#ex1" rel="modal:open"><i class="fa fa-sign-out pull-right" style="margin-right:0.2em;color:#1ABB9C;"></i>Log Out</a></li>
					<!-- <s:property value='basePath' />/Logout -->
				</ul>
			</li>
			
			<li role="presentation" class="dropdown">
                                <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-envelope-o"></i>
                                    <span class="badge bg-green">6</span>
                                </a>
                                <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where... 
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where... 
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where... 
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a>
                                            <span class="image">
                                        <img src="images/img.jpg" alt="Profile Image" />
                                    </span>
                                            <span>
                                        <span>John Smith</span>
                                            <span class="time">3 mins ago</span>
                                            </span>
                                            <span class="message">
                                        Film festivals used to be do-or-die moments for movie makers. They were where... 
                                    </span>
                                        </a>
                                    </li>
                                    <li>
                                        <div class="text-center">
                                            <a>
                                                <strong>See All Alerts</strong>
                                                <i class="fa fa-angle-right"></i>
                                            </a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
		</ul>
	</nav>
</div>

  <!-- Modal HTML embedded directly into document -->
  <div id="ex1" style="display:none;" class="login_form modal">
    <h3>Log Out alert</h3>

    <p>Are you sure you want to logout?.<br><br>
	<a href="#" rel="modal:close">No</a>
	<a href="Logout">Yes</a></p>
  </div>
