(:  Um documento XQuery que informe os detalhes do produto com menor preço. :)

let $o := collection("notas/*.xml")//nfeProc/NFe/infNFe/det/prod
let $minProd := min($o/vProd)
for $p in $o[vProd = $minProd]
return $p