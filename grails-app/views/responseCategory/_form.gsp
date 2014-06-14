<%@ page import="shuriken.ResponseCategory" %>



<div class="fieldcontain ${hasErrors(bean: responseCategoryInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="responseCategory.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${responseCategoryInstance?.text}"/>
</div>

