class CreateMetiers < ActiveRecord::Migration[5.1]
  def change
    create_table :metiers do |t|
      t.string :label
      t.string :specialite

      t.timestamps
    end
  end
end
