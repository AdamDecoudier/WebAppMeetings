class CreateResponsableEtablissements < ActiveRecord::Migration[5.1]
  def change
    create_table :responsable_etablissements do |t|
      t.string :pseudo
      t.string :mdp
      t.string :nom
      t.string :prenom
      t.string :mail
      t.string :fonction
      t.string :tel
      t.references :etablissement, foreign_key: true

      t.timestamps
    end
  end
end
