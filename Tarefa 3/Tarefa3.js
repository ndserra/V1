<html>
<body>
<p id="ExibeData" style="font-weight: bolder;"></p>

<script>
function dtFormatada(){
	// Para formatar a data atual no formato solicitado
    var data = new Date(),
        d  = data.getDate().toString(), // pega o dia como string
        m  = (data.getMonth()+1).toString(), // pega o mes como string
        dia = (d.length == 1) ? '0'+d : d,
        mes = (m.length == 1) ? '0'+m : m,
        ano = data.getFullYear();
    return dia+"/"+mes+"/"+ano;
}

document.getElementById("ExibeData").innerHTML = dtFormatada();
</script>

</body>
</html>