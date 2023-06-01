class Bebida < ApplicationRecord
  belongs_to :zumo
  belongs_to :alcohol
  belongs_to :refresco
end
