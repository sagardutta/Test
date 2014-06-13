<html>

<body>

 <h1>Login to Web App</h1>
      <g:form method="post" url="[action:'first']">
        <p><input type="text" name="login" value="" placeholder="Username or Email"></p>
        <p><input type="password" name="password" value="" placeholder="Password"></p>
        <p class="remember_me">
          <label>
            <input type="checkbox" name="remember_me" id="remember_me">
            Remember me on this computer
          </label>
        </p>
	<g:actionSubmit value="login" />
      </g:form>

</body>

</html>
