let $filmes := //topic[instanceOf/topicRef/@href='#Filme']

for $filme in $filmes
let $elenco := distinct-values(tokenize($filme/occurrence[scope/topicRef/@href='#elencoApoio']/resourceData, ','))
let $sinopse := $filme/occurrence[scope/topicRef/@href='#sinopse']/resourceData

where some $ator in $elenco satisfies contains($sinopse, $ator)

return $filme/@id