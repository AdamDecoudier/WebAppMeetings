class CreateParametrages < ActiveRecord::Migration[5.1]
  def change
    create_table :parametrages do |t|
      t.string :libelle
      t.string :typeParam

      t.timestamps
    end
  end
end
