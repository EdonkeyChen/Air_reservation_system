$(document).ready(function() { 	
	var demo1 = $('select[name="duallistbox_demo1[]"]').bootstrapDualListbox({infoTextFiltered: '<span class="label label-primary label-lg">Filtered</span>'});
	var container1 = demo1.bootstrapDualListbox('getContainer');			
	$('.form_date').datetimepicker({
		weekStart: 1,
		todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
	});
});