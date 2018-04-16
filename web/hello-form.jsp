<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Hello !</title>
    <style><%@include file="/WEB-INF/css/hello-form.css"%></style>
</head>
<body>
    <form method="POST" action="/simple-hello">
            <label for="firstname">
                Prénom :
            </label>
            <input type="text" placeholder="prénom" name="firstname" id="firstname" />

            <br/>

            <label for="lastname">
                Nom :
            </label>
            <input type="text" placeholder="nom" name="lastname" id="lastname" />

            <br />

            <label>
                Heure de la journée :
            </label>
            <input type="time" name="time" />

            <br />

            <input type="submit" value="Valider"/>
    </form>
</body>
</html>
