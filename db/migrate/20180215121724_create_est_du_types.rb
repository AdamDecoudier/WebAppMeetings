class CreateEstDuTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :est_du_types do |t|
      t.references :etablissement, foreign_key: true
      t.references :parametrage, foreign_key: true

      t.timestamps
    end
  end
end
