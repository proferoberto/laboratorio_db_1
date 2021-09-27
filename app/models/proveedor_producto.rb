class ProveedorProducto < ApplicationRecord
  belongs_to :proveedor
  belongs_to :producto
end
