class CreateEtablissements < ActiveRecord::Migration[5.1]
  def change
    create_table :etablissements do |t|
      t.string :nom
      t.string :mail
      t.string :adresse1
      t.string :adresse2
      t.string :adresseCp
      t.string :adresseVille
      t.boolean :zep
      t.boolean :zoneRural

      t.timestamps
    end
  end
end
