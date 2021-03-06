
<%@ page import="shuriken.Question" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="question.category.label" default="Select" />
                            <g:message code="question.category.label" default="Category" />
                        </th>
						<g:sortableColumn property="created" title="${message(code: 'question.created.label', default: 'Created')}" />
					
						<g:sortableColumn property="text" title="${message(code: 'question.text.label', default: 'Text')}" />
					
					</tr>
				</thead>
				<tbody>
                <g:form controller="list" action="create">
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                        <td><g:checkBox name="selectedQuestions" value="${questionInstance?.id}" checked="false"></g:checkBox></td>
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "category")}</g:link></td>
					
						<td><g:formatDate date="${questionInstance.created}" /></td>
					
						<td>${fieldValue(bean: questionInstance, field: "text")}</td>

                        <td>
                        <g:if test="${questionInstance?.choices}">
                            <span id="choices-label" class="property-label"><g:message code="question.choices.label" default="Choices" /></span>



                                <g:each in="${questionInstance.choices}" var="c">
                                    <li >
                                  <span class="property-value" aria-labelledby="choices-label"><g:link controller="responseChoice" action="show" id="${c.id}">${c?.toString()}</g:link></span>
                                    </li>
                                </g:each>


                        </g:if>
                        </td>
					
					</tr>
				</g:each>
                    <g:submitButton name="createSurvey" />
                        </g:form>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>

	</body>
</html>
