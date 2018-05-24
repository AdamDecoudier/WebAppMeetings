# README

g scaffold metier label:string specialite:string

rails g scaffold etablissement nom:string mail:string adresse1:string adresse2:string adresseCp:string adresseVille:string zep:boolean zoneRural:boolean

rails g scaffold parametrage libelle:string typeParam:string

rails g scaffold intervention titre:string date:datetime duree:time description:string nbGarcon:integer nbFille:integer nbElevesPrevison:integer nbElevesPresents:integer nbIntAvant:integer nbIntApres:integer heureDebut:time etablissement:references parametrage:references

rails g scaffold responsableEtablissement pseudo:string mdp:string nom:string prenom:string mail:string fonction:string tel:string etablissement:references 

rails g scaffold intervenant estResponsablePmis:boolean pseudo:string mdp:string tel:string nom:string prenom:string mail:string adressePerso1:string adressePerso2:string adressePersoCp:string adressePersoVille:string adressePro1:string adressePro2:string adresseProCp:string adresseProVille:string metier:references

rails g scaffold intervient intervenant:references intervention:references

rails g scaffold estDuType etablissement:references parametrage:references



#mettre à la fin de l'index de chaque views

</br>
</br>
<p>Au-dessus gestion des données créer par scaffold</p>
<a href="/etablissements">Etablissement</a>
<a href="/intervenants">Intervenant</a>
<a href="/interventions">Intervention</a>
<a href="/metiers">Metier</a>
<a href="/parametrages">Parametrages</a>
<a href="/responsable_etablissements">Responsable Etablissement</a>
<a href="/est_du_types">Est Du Type</a>
<a href="/intervients">Intervient</a>
