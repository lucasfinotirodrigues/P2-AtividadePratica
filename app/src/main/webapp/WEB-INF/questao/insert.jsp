<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="pt-br">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link href="/css/bootstrap.min.css" rel="stylesheet">
            <title>Nova questao</title>
        </head>
        <body>
            <div class="container">
                <h1>Nova questao</h1>
                <form action="/questao/insert" method="post">
                    <div class="form-group">
                        <label for="enunciado">enunciado</label>
                        <input type="text" class="form-control" name="enunciado" />
                    </div>
                    <a href="/questao/list" class="btn btn-primary">Voltar</a>
                    <button type="submit" class="btn btn-success">Salvar</button>
                </form>
            </div>
        </body>
    </html>