for $filme in //topic[instanceOf/topicRef/@href='#Filme']
let $association := //association[member/topicRef/@href=concat("#", $filme/@id)]
where $association/member/topicRef/@href = '#id_2000'
return $filme/baseName/baseNameString