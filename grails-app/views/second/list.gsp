<html>

<body>

<% [5,6,7,8].each { num -> %>
         <p><%="Question  ${num}" %>
	    <form action="">
<input type="radio" name="option 1" value="male">option 1<br>
<input type="radio" name="option 1" value="female">option 2<br>
<input type="radio" name="option 1" value="female">option 3<br>
<input type="radio" name="option 1" value="female">option 4
</form>	
</p>
      <%}%>
<g:link controller="SecondController" action="list">next </g:link>

</body>

</html>
