(: Um documento XQuery que informe o número de produtos em todas as notas e o valor total dos produtos :)

let $o := collection("./notas/*.xml")//nfeProc/NFe/infNFe/det
let $valor := sum($o/prod/vProd)
let $len := count($o)
return <total>
<qtd>Quantidade de produtos: {$len}</qtd>
<valor>Valor total: {$valor}</valor>
</total>