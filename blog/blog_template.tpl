<!DOCTYPE html>
<html>
<head>
<title>Meu Blog com Python e MongoDB</title>
</head>
<body>
%if (username != None):
Welcome {{username}}        <a href="/logout">Logout</a> | <a href="/newpost">New Post</a> | <a href="/newcategory">Criar categoria</a> <p>
%end
<h1>Meu Blog com Python e MongoDB</h1>
%for post in myposts:
<h2><a href="/post/{{post['permalink']}}">{{post['title']}}</a></h2>
Postado em {{post['post_date']}} <i>Por {{post['author']}}</i><br>
Comentários:
%if ('comments' in post):
%numComments = len(post['comments'])
%else:
%numComments = 0
%end
<a href="/post/{{post['permalink']}}">{{numComments}}</a>
<hr>
{{!post['body']}}
<p>
<p>
<em>Categoria</em>:
%if (post['category'] != "sem categoria"):
<a href="/category/{{post['category']}}">{{post['category']}}</a>
%else:
<a>{{post['category']}}</a>
%end
<p>
<p>
<em>Arquivado nas tags</em>:
%if ('tags' in post):
%for tag in post['tags'][0:1]:
<a href="/tag/{{tag}}">{{tag}}</a>
%for tag in post['tags'][1:]:
, <a href="/tag/{{tag}}">{{tag}}</a>
%end
%end

<p>
%end

</body>
</html>