<%@ attribute name="id" required="true" %>
<%@ attribute name="cla" required="true" %>

<input type="text" id="${id}" name="${id}" class="${cla}"/>

<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>