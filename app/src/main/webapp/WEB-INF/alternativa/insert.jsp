<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <title>Adicionar</title>
    </head>
    <body>
        <div class="container">
            <h1>Nova Alternativa</h1>
            <form action="/alternativa/insert" method="post">
                <div class="form-group">
                    <label for="texto">Texto</label>
                    <input type="text" class="form-control" name="texto" />
                    <label for="correta">Correta</label>
                    <input type="checkbox" name="correta"/>
                </div>
                <a href="/alternativa/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>