class CreateIntervenants < ActiveRecord::Migration[5.1]
  def change
    create_table :intervenants do |t|
      t.boolean :estResponsablePmis
      t.string :pseudo
      t.string :mdp
      t.string :tel
      t.string :nom
      t.string :prenom
      t.string :mail
      t.string :adressePerso1
      t.string :adressePerso2
      t.string :adressePersoCp
      t.string :adressePersoVille
      t.string :adressePro1
      t.string :adressePro2
      t.string :adresseProCp
      t.string :adresseProVille
      t.references :metier, foreign_key: true

      t.timestamps
    end
  end
end
