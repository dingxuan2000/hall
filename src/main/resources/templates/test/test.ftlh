<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<h1>hello word</h1>
<button id="add">click</button>
<button id="delete">delete</button>
<script>
    const add = document.getElementById("add");
    const deleteById = document.getElementById("delete");

    let name = "zanyuan";
    let age = 12;

    add.addEventListener("click", ()=>{
        let xhr = new XMLHttpRequest();
        xhr.open("POST", "http://localhost:8080/addAll", true);
        xhr.setRequestHeader("Content-Type", "application/json");
        let data = JSON.stringify({ "name": name, "age": age });
        xhr.send(data);
    })

    // deleteById.addEventListener("click", ()=>{
    //     let xhr = new XMLHttpRequest();
    //     xhr.open("DELETE", "http://localhost:8080/deletebyid/5");
    //     xhr.setRequestHeader("Content-Type", "application/json");
    //     xhr.send();
    // })


</script>
</body>
</html>