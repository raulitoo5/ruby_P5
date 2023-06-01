class CreateZumos < ActiveRecord::Migration[7.0]
  def change
    create_table :zumos do |t|
      t.string :nombre

      t.timestamps
    end
    add_index :zumos, :nombre, unique: true
  end
end
