class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.references :cliente, null: false, foreign_key: true
      t.decimal :total
      t.string :estado
      t.date :fecha
      t.belongs_to :linea_pedido, null: false, foreign_key: true

      t.timestamps
    end
  end
end
