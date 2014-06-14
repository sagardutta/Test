<%@ page import="shuriken.ResponseChoice" %>



<div class="fieldcontain ${hasErrors(bean: responseChoiceInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="responseChoice.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${shuriken.ResponseCategory.list()}" optionKey="id" required="" value="${responseChoiceInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: responseChoiceInstance, field: 'choice', 'error')} ">
	<label for="choice">
		<g:message code="responseChoice.choice.label" default="Choice" />
		
	</label>
	<g:textField name="choice" value="${responseChoiceInstance?.choice}"/>
</div>

