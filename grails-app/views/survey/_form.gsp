<%@ page import="shuriken.Survey" %>



<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="survey.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${surveyInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: surveyInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="survey.questions.label" default="Questions" />
		
	</label>
	<g:select name="questions" from="${shuriken.Question.list()}" multiple="multiple" optionKey="id" size="5" value="${surveyInstance?.questions*.id}" class="many-to-many"/>
</div>

