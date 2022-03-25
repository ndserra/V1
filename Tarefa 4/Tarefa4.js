<html>
<body>
<p id="ExibeResultadoValida" style="font-weight: bolder;"></p>

<script>
function Valida(s) {

	const isValid = (str = '') => {
   		const map=new Map();
   		map.set('{','}');
   		map.set('(',')');
   		map.set('[',']');
   		const b=[];
   		for(let i=0;i<str.length;i++){
      		if(map.has(str.charAt(i))){
         		b.push(str.charAt(i));
      		} else{
         		let pop=b.pop();
         		if(map.get(pop)!==str.charAt(i)){
            	return false;
         	}
      	};
   	};
   	return b.length===0;
	};

if (isValid(s)) {
	return "A string fornecida possui parênteses, colchetes e chaves válidas";
    } else { return "A string fornecida esta ERRADA"; }

}

var stringTeste = "()";
document.getElementById("ExibeResultadoValida").innerHTML = Valida("()");

</script>

</body>
</html>