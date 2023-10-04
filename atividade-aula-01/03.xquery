for $filme in //topic[instanceOf/topicRef/@href='#Filme']
let $sinopse := $filme/occurrence[scope/topicRef/@href='#sinopse']/resourceData
where contains($sinopse, "especial")
let $tituloIngles := $filme/occurrence[scope/topicRef/@href='#ingles']/resourceData
return $tituloIngles