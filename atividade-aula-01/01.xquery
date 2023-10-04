for $genero in //topic[instanceOf/topicRef/@href='#Genero']
return distinct-values($genero/baseName/baseNameString)