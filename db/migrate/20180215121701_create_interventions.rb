class CreateInterventions < ActiveRecord::Migration[5.1]
  def change
    create_table :interventions do |t|
      t.string :titre
      t.datetime :date
      t.time :duree
      t.string :description
      t.integer :nbGarcon
      t.integer :nbFille
      t.integer :nbElevesPrevison
      t.integer :nbElevesPresents
      t.integer :nbIntAvant
      t.integer :nbIntApres
      t.time :heureDebut
      t.references :etablissement, foreign_key: true
      t.references :parametrage, foreign_key: true

      t.timestamps
    end
  end
end
