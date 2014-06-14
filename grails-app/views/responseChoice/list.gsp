
<%@ page import="shuriken.ResponseChoice" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'responseChoice.label', default: 'ResponseChoice')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-responseChoice" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-responseChoice" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="responseChoice.category.label" default="Category" /></th>
					
						<g:sortableColumn property="choice" title="${message(code: 'responseChoice.choice.label', default: 'Choice')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${responseChoiceInstanceList}" status="i" var="responseChoiceInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${responseChoiceInstance.id}">${fieldValue(bean: responseChoiceInstance, field: "category")}</g:link></td>
					
						<td>${fieldValue(bean: responseChoiceInstance, field: "choice")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${responseChoiceInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
