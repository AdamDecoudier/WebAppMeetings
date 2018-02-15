json.extract! responsable_etablissement, :id, :pseudo, :mdp, :nom, :prenom, :mail, :fonction, :tel, :etablissement_id, :created_at, :updated_at
json.url responsable_etablissement_url(responsable_etablissement, format: :json)
