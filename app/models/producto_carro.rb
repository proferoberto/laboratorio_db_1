class ProductoCarro < ApplicationRecord
  belongs_to :producto
  belongs_to :carro
end
