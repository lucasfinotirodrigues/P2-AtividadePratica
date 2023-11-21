<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <title>Excluir</title>
        <title>Remover Questao</title>
    </head>
    <body>
        <div class="container">
            <h1>Remover Questao</h1>
            <p>Tem certeza que deseja remover a questao "${questao.enunciado}"</p>
            <form action="/questao/delete" method="post">
                <input type="hidden" name="id" value="${questao.id}">
                <br/>
                <a href="/questao/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-danger">Remover</button>
            </form>
        </div>
    </body>
</html>