for $filme in //topic[instanceOf/topicRef/@href='#Filme']
let $association := //association[member/topicRef/@href=concat("#", $filme/@id)]
where $association/member/topicRef/@href = '#thriller'
return $filme/baseName/baseNameString