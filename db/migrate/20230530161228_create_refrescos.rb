class CreateRefrescos < ActiveRecord::Migration[7.0]
  def change
    create_table :refrescos do |t|
      t.string :nombre

      t.timestamps
    end
    add_index :refrescos, :nombre, unique: true
  end
end
