class Pedido < ApplicationRecord
  belongs_to :cliente
  belongs_to :linea_pedido
end
