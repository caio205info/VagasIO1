<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="arv.css">
    <title>Agenda Telefônica</title>
    
    <script>

    </script>
</head>
<body>
    <div class="content">
    <div class="gestao">

    <?php
       $con = mysqli_connect('localhost', 'root', '', 'agenda');
       $sql = "SELECT idSetor, nomeSetor FROM 'setor'";
       $setores = mysqli_query($sql, $con) or die(mysqli_error());

       while($row = mysqli_fetch_assoc($setores)){
           echo '<p>'.$row['nomeSetor'].'</p>';
       }

    ?>
    </div>
    </div>
</body>
</html>
