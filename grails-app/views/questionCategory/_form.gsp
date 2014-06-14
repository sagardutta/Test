<%@ page import="shuriken.QuestionCategory" %>



<div class="fieldcontain ${hasErrors(bean: questionCategoryInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="questionCategory.category.label" default="Category" />
		
	</label>
	<g:textField name="category" value="${questionCategoryInstance?.category}"/>
</div>

