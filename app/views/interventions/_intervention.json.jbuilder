json.extract! intervention, :id, :titre, :date, :duree, :description, :nbGarcon, :nbFille, :nbElevesPrevison, :nbElevesPresents, :nbIntAvant, :nbIntApres, :heureDebut, :etablissement_id, :parametrage_id, :created_at, :updated_at
json.url intervention_url(intervention, format: :json)
