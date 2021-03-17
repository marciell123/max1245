<!DOCTYPE html>
<html lang="en">
<head>
  <title>jsmarciell</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
</head>
<script>

</script>


  </script>
<body>
    <div class="container mt-3">
        <div class="card-columns">
            <div class="card text-center">
                <div class="card-header">Item A</div>
                <div class="card-body">
                    <h4 class="card-title">R$ 5.00</h4>
                    <button type="button" class="btn btn-primary" id="bt-a">Adicionar</button>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-header">Item B</div>
                <div class="card-body">
                    <h4 class="card-title">R$ 10.00</h4>
                    <button type="button" class="btn btn-primary" id="bt-b">Adicionar</button>
                </div>
            </div>
            <div class="card text-center">
                <div class="card-header">Item C</div>
                <div class="card-body">
                    <h4 class="card-title">R$ 20.00</h4>
                    <button type="button" class="btn btn-primary" id="bt-c">Adicionar</button>
                </div>
            </div>
        </div>    
        <div class="card text-center">
            <div class="card-body"><h4 class="card-title">R$ <span id="total">0.00</span></h4></div>
        </div>
    </div>
</body>
<script>
  var botaoA = document.getElementById('bt-a')
var botaoB = document.getElementById('bt-b')
var botaoC = document.getElementById('bt-c')
var total = 0

botaoA.addEventListener('click', function() {add(botaoA)})
botaoB.addEventListener('click', function() {add(botaoB)})
botaoC.addEventListener('click', function() {add(botaoC)})

function add(botao) {
  var valorAdd = botao.previousElementSibling.innerText
  valorAdd = Number(valorAdd.replace(/[^0-9.]/gi, ''))
  total += valorAdd
  var decimal = total% 1*100
  if(decimal == 0){
    decimal = '00'
  }
  document.getElementById('total').innerText = Math.floor(total) +'.'+ String(decimal)
}
</script>
</html>
