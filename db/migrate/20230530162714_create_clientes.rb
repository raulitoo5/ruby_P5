class CreateClientes < ActiveRecord::Migration[7.0]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.integer :puntos
      t.string :correo
      t.string :password

      t.timestamps
    end
    add_index :clientes, :nombre, unique: true
    add_index :clientes, :correo, unique: true
  end
end
