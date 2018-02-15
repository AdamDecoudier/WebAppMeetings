class CreateIntervients < ActiveRecord::Migration[5.1]
  def change
    create_table :intervients do |t|
      t.references :intervenant, foreign_key: true
      t.references :intervention, foreign_key: true

      t.timestamps
    end
  end
end
