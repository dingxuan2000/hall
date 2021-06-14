<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <h1>Hello world</h1>
<table>
    <thead>
        <tr>
            <th>id</th>
            <th>name</th>
            <th>age</th>
        </tr>
    </thead>
    <tbody>

    <#list userList1 as user>
        <td>${user.id}</td>
        <td>${user.name}</td>
        <td>${user.age}</td>
    </#list>

    </tbody>
</table>
</body>
</html>