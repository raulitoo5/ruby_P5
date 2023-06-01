class CreateBebidas < ActiveRecord::Migration[7.0]
  def change
    create_table :bebidas do |t|
      t.string :nombre
      t.decimal :precio
      t.integer :tipo
      t.belongs_to :zumo, null: false, foreign_key: true
      t.belongs_to :alcohol, null: false, foreign_key: true
      t.belongs_to :refresco, null: false, foreign_key: true

      t.timestamps
    end
  end
end
