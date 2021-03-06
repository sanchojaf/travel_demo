require Rails.root + "db/common/trip_functions"
include TripFunctions

destinations = [
  {:name => "HAVANA",},
  {:name => "MATANZAS",},
  {:name => "VARADERO", :parent => "MATANZAS",},
  {:name => "CIEGO DE AVILA",},
  {:name => "CAYO GUILLERMO", :parent => "CIEGO DE AVILA",},
  {:name => "OLD HAVANA", :parent => "HAVANA",},
  {:name => "VILLA CLARA",},
  {:name => "SANTA CLARA CITY", :parent => "VILLA CLARA",},
  {:name => "EASTERN BEACHES", :parent => "HAVANA",},
  {:name => "GRANMA",},
  {:name => "SANTIAGO DE CUBA",},
  {:name => "REMEDIOS", :parent => "VILLA CLARA",},
  {:name => "CIENAGA DE ZAPATA", :parent => "MATANZAS",},
  {:name => "HOLGUIN",},
  {:name => "PLAYA PESQUERO", :parent => "HOLGUIN",},
  {:name => "CAYO COCO", :parent => "CIEGO DE AVILA",},
  {:name => "MAYABEQUE",},
  {:name => "JIBACOA", :parent => "MAYABEQUE",},
  {:name => "LAS TUNAS",},
  {:name => "COVARRUBIAS", :parent => "LAS TUNAS",},
  {:name => "GUARDALAVACA", :parent => "HOLGUIN",},
  {:name => "CAMAGUEY",},
  {:name => "SANTA LUCIA", :parent => "CAMAGUEY",},
  {:name => "PLAYA CHIVIRICO", :parent => "SANTIAGO DE CUBA",},
  {:name => "SANCTI SPIRITUS",},
  {:name => "TRINIDAD", :parent => "SANCTI SPIRITUS",},
  {:name => "LAS TUNAS CITY", :parent => "LAS TUNAS",},
  {:name => "GUANTANAMO",},
  {:name => "CAIMANERA", :parent => "GUANTANAMO",},
  {:name => "CAMAGUEY CITY", :parent => "CAMAGUEY",},
  {:name => "MATANZAS CITY", :parent => "MATANZAS",},
  {:name => "VEDADO", :parent => "HAVANA",},
  {:name => "SANTIAGO DE CUBA CITY", :parent => "SANTIAGO DE CUBA",},
  {:name => "CIENFUEGOS",},
  {:name => "PINAR DEL RIO",},
  {:name => "CAYO LEVISA", :parent => "PINAR DEL RIO",},
  {:name => "MIRAMAR", :parent => "HAVANA",},
  {:name => "ISLA DE LA JUVENTUD",},
  {:name => "CIEGO DE AVILA CITY", :parent => "CIEGO DE AVILA",},
  {:name => "PARQUE BACONAO", :parent => "SANTIAGO DE CUBA",},
  {:name => "MAREA DEL PORTILLO", :parent => "GRANMA",},
  {:name => "HOLGUIN CITY", :parent => "HOLGUIN",},
  {:name => "BARACOA", :parent => "GUANTANAMO",},
  {:name => "CORRALILLO", :parent => "VILLA CLARA",},
  {:name => "CAYO SANTA MARIA", :parent => "VILLA CLARA",},
  {:name => "FLORIDA TOWN", :parent => "CAMAGUEY",},
  {:name => "MANZANILLO", :parent => "GRANMA",},
  {:name => "GUANTANAMO CITY", :parent => "GUANTANAMO",},
  {:name => "HANABANILLA", :parent => "VILLA CLARA",},
  {:name => "SANCTI SPIRITUS CITY", :parent => "SANCTI SPIRITUS",},
  {:name => "CAYO ENSENACHOS", :parent => "VILLA CLARA",},
  {:name => "CAYO LARGO", :parent => "ISLA DE LA JUVENTUD",},
  {:name => "TOPES DE COLLANTES", :parent => "SANCTI SPIRITUS",},
  {:name => "VINALES", :parent => "PINAR DEL RIO",},
  {:name => "JARDINES DE LA REINA", :parent => "CIEGO DE AVILA",},
  {:name => "GUANAHACABIBES", :parent => "PINAR DEL RIO",},
  {:name => "SAN DIEGO", :parent => "PINAR DEL RIO",},
  {:name => "ARTEMISA",},
  {:name => "LAS TERRAZAS", :parent => "ARTEMISA",},
  {:name => "CITY OF MORON", :parent => "CIEGO DE AVILA",},
  {:name => "GIBARA", :parent => "HOLGUIN",},
  {:name => "PINAR DEL RIO CITY", :parent => "PINAR DEL RIO",},
  {:name => "BAYAMO CITY", :parent => "GRANMA",},
  {:name => "CAYO SAETIA", :parent => "HOLGUIN",},
  {:name => "SIERRA MAESTRA", :parent => "SANTIAGO DE CUBA",},
  {:name => "CAYO LAS BRUJAS", :parent => "VILLA CLARA",},
  {:name => "PINARES DE MAYARI", :parent => "HOLGUIN",},
  {:name => "YAGUAJAY", :parent => "SANCTI SPIRITUS",},
  {:name => "SOROA", :parent => "ARTEMISA",},
  {:name => "PLAYA LARGA", :parent => "MATANZAS",},
  {:name => "PLAYA GIRON", :parent => "MATANZAS"},
]

taxonomy = Spree::Taxonomy.where(:name => 'Destination').first
destinations.each do |destination_attrs|
	create_taxon(taxonomy, destination_attrs)
end


