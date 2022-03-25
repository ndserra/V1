<?PHP
//Script PHP para a Tarefa 5


$db = pg_connect("host=localhost dbname=teste user=postgres password=B@nana");


$arq = fopen ('demanda.txt', 'r');
while(!feof($arq)){
	$carro = fgets($arq, 1024);
    $resultado = pg_query($db, "SELECT * from carros where id = ".$carro.";");
	$linha = pg_fetch_array($resultado);
	echo $linha[0] . " - " . $linha[1] . " - " . $linha[2] . " - " . "<br>";
}
fclose($arq);
?>