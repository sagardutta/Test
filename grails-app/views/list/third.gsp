<html>

<body>

<% [9,10,11,12].each { num -> %>
         <p><%="Question  ${num}" %>
	    <form action="">
<input type="radio" name="option 1" value="male">option 1<br>
<input type="radio" name="option 1" value="female">option 2<br>
<input type="radio" name="option 1" value="female">option 3<br>
<input type="radio" name="option 1" value="female">option 4
</form>	
</p>
      <%}%>
<g:link controller="second">next </g:link>

</body>

</html>
