class ProductSerializer < ActiveModel::Serializer
  attributes [:id, :name, :price, :tax, :total, :supplier, :is_discounted?, :created_at, :updated_at]
end
