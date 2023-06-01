class CreateLineaPedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :linea_pedidos do |t|
      t.integer :id_pedido
      t.integer :id_bebida
      t.integer :cantidad

      t.timestamps
    end
  end
end
