<?php
function Valida($string) {

$c1 = 0;
$c2 = 0;

$length = strlen($string);

for ($i = 0;$i < $length; $i++) {
    $char = $string[$i];
    if( $char == '(' ) {
        $c1 ++;
    } elseif( $char == ')' ) {
        $c1 --;
    }

        for($j =0;$j < $length; $j++) {
            $char = $string[$j];
            if( $char == '[' ) {
                $c2 ++;
        } elseif( $char == ']' ) {
                $c2 --;
        }

        }


    if( $c1 < 0 || $c2 < 0) {
        return "A string fornecida esta ERRADA";
    }

}

return "A string fornecida possui parênteses, colchetes e chaves válidas";
}

$string = "[()]";

echo $string . "  -  " . Valida($string); 


?>