
<%@ page import="shuriken.Survey" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'survey.label', default: 'Survey')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-survey" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
    <section id="content">
        <div class="container">
            <div class="row">
                <form id="survey" class="formoid-solid-dark" style="background-color:#FFFFFF;font-size:14px;font-family:'Palatino Linotype','Book Antiqua',Palatino,serif;color:#34495E;max-width:680px;min-width:150px" method="post">
                    <g:each in="${categories}" var="category">
                        <h3>${category}</h3>
                        <g:each in="${categoryMap.get(category)}" var="question">

                            <div class="element-radio"><label class="title">${question}</label>
                            <g:each in="${question.choices}" var="choice">

                            <div class="column column1"><label><input type="radio" name="radio1" value="${choice}" /><span>${choice}</span><span class="clearfix"></span>
                            </g:each>

                        </g:each>
                    </g:each>


                    <div><h3>ADMISSIONS</h3></div>
                    <div class="element-radio"><label class="title">1. Were you greeted by a nurse when you arrived in your room?</label>		<div class="column column1"><label><input type="radio" name="radio1" value="Immediately" /><span>Immediately</span></label><label><input type="radio" name="radio1" value="Short wait" /><span>Short wait</span></label><label><input type="radio" name="radio1" value="After a while" /><span>After a while</span></label><label><input type="radio" name="radio1" value="Long wait" /><span>Long wait</span></label><label><input type="radio" name="radio1" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">2. Was the assistance you received  with admission paperwork  adequate?
                    </label>		<div class="column column1"><label><input type="radio" name="radio6" value="Excellent" /><span>Excellent</span></label><label><input type="radio" name="radio6" value="Very good" /><span>Very good</span></label><label><input type="radio" name="radio6" value="Average" /><span>Average</span></label><label><input type="radio" name="radio6" value="Poor" /><span>Poor</span></label><label><input type="radio" name="radio6" value="No assistance received " /><span>No assistance received </span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">3. Did the facility present a home-like environment- clean and odor free?
                    </label>		<div class="column column1"><label><input type="radio" name="radio" value="Yes " /><span>Yes </span></label><label><input type="radio" name="radio" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">4. Did you/were you offered something to, eat or drink when you came in?
                    </label>		<div class="column column1"><label><input type="radio" name="radio3" value="Immediately" /><span>Immediately</span></label><label><input type="radio" name="radio3" value="Short wait" /><span>Short wait</span></label><label><input type="radio" name="radio3" value="After a while" /><span>After a while</span></label><label><input type="radio" name="radio3" value="Long wait" /><span>Long wait</span></label><label><input type="radio" name="radio3" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <br/>
                    <div><h3>DIETARY</h3></div>
                    <div class="element-radio"><label class="title">1. Have your meals been served on time? (Breakfast 8-9 am, Lunch 12-1 pm, Dinner 6-7 pm)
                    </label>		<div class="column column1"><label><input type="radio" name="radio4" value="Yes" /><span>Yes</span></label><label><input type="radio" name="radio4" value="No	" /><span>No	</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">2. Are your meals appealing? Warm, Visually, Texture, adequate choices?
                    </label>		<div class="column column1"><label><input type="radio" name="radio5" value="Excellent" /><span>Excellent</span></label><label><input type="radio" name="radio5" value="Very good" /><span>Very good</span></label><label><input type="radio" name="radio5" value="Average" /><span>Average</span></label><label><input type="radio" name="radio5" value="Poor" /><span>Poor</span></label><label><input type="radio" name="radio5" value="No assistance received " /><span>No assistance received </span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">3. Are alternate meal selections offered?
                    </label>		<div class="column column1"><label><input type="radio" name="radio7" value="Always" /><span>Always</span></label><label><input type="radio" name="radio7" value="Usually" /><span>Usually</span></label><label><input type="radio" name="radio7" value="Sometimes" /><span>Sometimes</span></label><label><input type="radio" name="radio7" value="Not usually" /><span>Not usually</span></label><label><input type="radio" name="radio7" value="Never" /><span>Never</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">4. Have meals and portions been in keeping with your requests and diet?
                    </label>		<div class="column column1"><label><input type="radio" name="radio8" value="Yes" /><span>Yes</span></label><label><input type="radio" name="radio8" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">5. How comfortable is the room?
                    </label>		<div class="column column1"><label><input type="radio" name="radio9" value="Excellent" /><span>Excellent</span></label><label><input type="radio" name="radio9" value="Very Good" /><span>Very Good</span></label><label><input type="radio" name="radio9" value="Average" /><span>Average</span></label><label><input type="radio" name="radio9" value="Below Average" /><span>Below Average</span></label><label><input type="radio" name="radio9" value="Poor" /><span>Poor</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="submit"><input type="submit" value="Submit"/></div></form><p class="frmd">
                <!-- Stop Formoid form-->



            </div>
        </div>
    </section>

    <div id="show-survey" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list survey">
			
				<g:if test="${surveyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="survey.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${surveyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${surveyInstance?.questions}">
				<li class="fieldcontain">
					<span id="questions-label" class="property-label"><g:message code="survey.questions.label" default="Questions" /></span>

                    <div class="element-radio"><label class="title">1. Were you greeted by a nurse when you arrived in your room?</label>		<div class="column column1"><label><input type="radio" name="radio1" value="Immediately" /><span>Immediately</span></label><label><input type="radio" name="radio1" value="Short wait" /><span>Short wait</span></label><label><input type="radio" name="radio1" value="After a while" /><span>After a while</span></label><label><input type="radio" name="radio1" value="Long wait" /><span>Long wait</span></label><label><input type="radio" name="radio1" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>

                    <g:each in="${surveyInstance.questions}" var="q">
                        <div>
                            <div class="element-radio"><label class="title">${q}</label>
                                <div class="column column1"><label><input type="radio" name="radio1" value="Immediately" /><span>Immediately</span></label><label><input type="radio" name="radio1" value="Short wait" /><span>Short wait</span></label><label><input type="radio" name="radio1" value="After a while" /><span>After a while</span></label><label><input type="radio" name="radio1" value="Long wait" /><span>Long wait</span></label><label><input type="radio" name="radio1" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                            </div>

                            <span class="property-list" aria-labelledby="questions-label"><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
                          <g:each in="${q.choices}" var="choice">
                              <span class="property-list" aria-labelledby="questions-label"><g:link controller="responseChoice" action="show" id="${choice.id}">${choice?.encodeAsHTML()}</g:link></span>
                          </g:each>

                        </div>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${surveyInstance?.id}" />
					<g:link class="edit" action="edit" id="${surveyInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
