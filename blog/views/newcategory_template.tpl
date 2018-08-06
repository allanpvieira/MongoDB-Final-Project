<!doctype HTML>
<html>
<head>
	<title>Criar um novo post</title>
</head>
<body>
	<form action="/newcategory" method="POST">
		<h2>Nome da categoria</h2>
		<input type="text" name="catname" size="120" value="{{catname}}">
		<td class="error">
			{{error}}            
        </td><br>
		<p>		
		<input type="submit" value="Submit">
		</p>
	</form>
</body>
</html>