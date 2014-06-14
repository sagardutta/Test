<%@ page import="shuriken.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="question.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${shuriken.QuestionCategory.list()}" optionKey="id" required="" value="${questionInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'choices', 'error')} ">
	<label for="choices">
		<g:message code="question.choices.label" default="Choices" />
		
	</label>
	<g:select name="choices" from="${shuriken.ResponseChoice.list()}" multiple="multiple" optionKey="id" size="5" value="${questionInstance?.choices*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'created', 'error')} required">
	<label for="created">
		<g:message code="question.created.label" default="Created" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created" precision="day"  value="${questionInstance?.created}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="question.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${questionInstance?.text}"/>
</div>

