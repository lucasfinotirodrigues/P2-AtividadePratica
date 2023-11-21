<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="/css/bootstrap.min.css" rel="stylesheet">
        <title>Editar Questao</title>
    </head>
    <body>
        <div class="container">
            <h1>Editar Questao</h1>
            <form action="/questao/update" method="post">
                <input type="hidden" name="id" value="${quest.id}" />
                <div class="form-group">
                    <label for="enunciado">Enunciado</label>
                    <input type="text" class="form-control" name="enunciado" value="${quest.enunciado}" />
                </div>
                <a href="/questao/list" class="btn btn-primary">Voltar</a>
                <button type="submit" class="btn btn-success">Salvar</button>
            </form>
        </div>
    </body>
</html>