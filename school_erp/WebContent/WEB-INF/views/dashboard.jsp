<%@ include file="genericImports.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@ include file="staticImports.jsp" %>
    <title><%@ include file="title.jsp" %></title>
</head>
<body class="nav-sm" onload="new PNotify({
                                title: 'Welcome Back Mr. Kapil Kumar',
                                type: 'info',
                                text: 'You last login is on 12- feb-2016. Hint: Use session to show one time',
                                nonblock: {
                                    nonblock: true,
                                    nonblock_opacity: .2
                                }
                            });">
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
  					<div class="page-title">
                        <div class="title_left" style="width:100%;margin-bottom:20px;border-bottom: 2px solid #73879C;">
                            <h3>Dashboard </h3>
                        </div>
						<br>
                    </div>
                    <div class="clearfix"></div>
                    <div class="row" style="min-height:500px;">
                    
             
                            
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