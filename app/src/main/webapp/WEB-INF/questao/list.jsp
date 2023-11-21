<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Questões</title>
        <link href="/css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <h1>Questões</h1>
            <a href="/questao/insert" class="btn btn-primary">Nova Questao</a>
            <table class="table">
                <tr>
                    <th>ID</th>
                    <th>Enunciado</th>
                    <th>&nbsp;</th>
                </tr>
                <c:forEach items="${questoes}" var="item">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.enunciado}</td>
                        <td>
                            <a href="/questao/update?id=${item.id}">Editar</a>
                            <a href="/questao/delete?id=${item.id}">Excluir</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>