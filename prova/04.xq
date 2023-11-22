(: Um documento XQuery que informe os detalhes da nota com maior imposto. :)

let $o := collection("notas/*.xml")//nfeProc/NFe/infNFe/total/ICMSTot
let $max := max($o/vICMS)
return $o[vICMS = $max]