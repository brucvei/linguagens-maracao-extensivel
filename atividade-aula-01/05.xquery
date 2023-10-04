let $filmes := //topic[instanceOf/topicRef/@href='#Filme']
let $filmesComMaisDeTresAtores :=
  for $filme in $filmes
  let $elencoApoio := $filme/occurrence[scope/topicRef/@href='#elencoApoio']/resourceData
  where count($elencoApoio) > 3
  return $filme
return count($filmesComMaisDeTresAtores)