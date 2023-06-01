class CreateAlcohols < ActiveRecord::Migration[7.0]
  def change
    create_table :alcohols do |t|
      t.string :nombre
      t.float :grado

      t.timestamps
    end
    add_index :alcohols, :nombre, unique: true
  end
end
