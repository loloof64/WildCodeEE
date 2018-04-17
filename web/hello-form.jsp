<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Hello !</title>
    <link href="/css/hello-form.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form method="POST" action="/simple-hello">
        <h2>Un simple bonjour</h2>
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
