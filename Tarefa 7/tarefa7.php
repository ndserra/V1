<?PHP
//Script PHP para a Tarefa 5


$db = pg_connect("host=localhost dbname=Tarefa6 user=postgres password=B@nana");

$resultado = pg_query($db, "SELECT nome from pessoas");

while( $linha = pg_fetch_array($resultado) ){
	echo $linha[0] . "<br>";
}

?>