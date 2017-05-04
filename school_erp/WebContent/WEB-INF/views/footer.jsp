<div class="">
	<p class="pull-left"><a href="#">Privacy</a> | <a href="#">Terms Of Use</a></p>
	<p class="pull-right">Powered by <a href="#" target="_blank">H Kapil Kumar</a></p>
</div>
<div class="clearfix"></div>
<script src="${pageContext.servletContext.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/custom.js"></script>
<!-- iOS Type Input Fields -->
<script src="${pageContext.servletContext.contextPath}/resources/js/icheck/icheck.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/switchery/switchery.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/nicescroll/jquery.nicescroll.min.js"></script>
<!-- Date Range Picker -->
<script src="${pageContext.servletContext.contextPath}/resources/js/moment.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/datepicker/daterangepicker.js"></script>
<!-- Dropzone -->
<script src="${pageContext.servletContext.contextPath}/resources/js/dropzone/dropzone.js"></script>
<!-- Datatables -->
<script src="${pageContext.servletContext.contextPath}/resources/js/datatables/js/jquery.dataTables.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/js/datatables/tools/js/dataTables.tableTools.js"></script>
<!-- Form Validation -->
<script src="${pageContext.servletContext.contextPath}/resources/js/parsley/parsley.min.js"></script>
<!-- model -->
<script src="${pageContext.servletContext.contextPath}/resources/js/model/jquery.modal.js"></script>


 <!-- PNotify -->
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/notify/pnotify.core.js"></script>
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/notify/pnotify.buttons.js"></script>
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/notify/pnotify.nonblock.js"></script>

<%--  <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/jquery-1.9.1.min.js"></script>
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/jquery.easing.min.js"></script> --%>
 <script type="text/javascript" src="${pageContext.servletContext.contextPath}/resources/js/wizard/jquery.smartWizard.js"></script>

<script>
//Data Table
	var asInitVals = new Array();
	$(document).ready(function () {
		var oTable = $('#listTable').dataTable({
			
			"oLanguage": {
				"sSearch": "Search:"
			},
			
			"aoColumnDefs": [
				{
					'bSortable': false,
					 'aTargets': [ "no-sort" ],
				} //disables sorting for column one
			],
			"sPaginationType": "full_numbers"
		});
		
		
		$("tfoot input").keyup(function () {
			oTable.fnFilter(this.value, $("tfoot th").index($(this).parent()));
		});
		$("tfoot input").each(function (i) {
			asInitVals[i] = this.value;
		});
		$("tfoot input").focus(function () {
			if (this.className == "search_init") {
				this.className = "";
				this.value = "";
			}
		});
		$("tfoot input").blur(function (i) {
			if (this.value == "") {
				this.className = "search_init";
				this.value = asInitVals[$("tfoot input").index(this)];
			}
		});

//Dropzone		
		Dropzone.autoDiscover = false;
		if($('.dropzone').length)
		{		
			$(function() {
				var myDropzone = new Dropzone(".dropzone", { 
					paramName: "myFile",
					url: document.getElementById('appBasePathId').value + '/Task/UploadDocument'
					
				});

				myDropzone.on('sending', function(file, xhr, formData){
					var taskId = document.getElementById('taskId').value;
					formData.append('taskId', taskId);
				});
				
				myDropzone.on("queuecomplete", function() {
				
				});
			});
		}
//Reload record document page on dialog	close
		$(".closeDocUpload").click(function(){
			location.reload();
		});
	
	});
</script>
