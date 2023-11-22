(:  Um documento XQuery que informe o total de ISSQN retido, total do ICMS,
valor aproximado de tributos e total de frete dos produtos das notas. :)

let $o := collection("./notas/*.xml")//nfeProc/NFe/infNFe/total/ICMSTot
let $issqn := sum($o/vPIS)
let $icms := sum($o/vICMS)
let $aprox := sum($o/vCOFINS)
let $frete := sum($o/vFrete)
return <total>
<issqn>{$issqn}</issqn>
<icms>{$icms}</icms>
<aprox>{$aprox}</aprox>
<frete>{$frete}</frete>
</total>
