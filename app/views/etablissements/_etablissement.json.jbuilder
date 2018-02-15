json.extract! etablissement, :id, :nom, :mail, :adresse1, :adresse2, :adresseCp, :adresseVille, :zep, :zoneRural, :created_at, :updated_at
json.url etablissement_url(etablissement, format: :json)
