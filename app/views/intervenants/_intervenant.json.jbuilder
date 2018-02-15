json.extract! intervenant, :id, :estResponsablePmis, :pseudo, :mdp, :tel, :nom, :prenom, :mail, :adressePerso1, :adressePerso2, :adressePersoCp, :adressePersoVille, :adressePro1, :adressePro2, :adresseProCp, :adresseProVille, :metier_id, :created_at, :updated_at
json.url intervenant_url(intervenant, format: :json)
