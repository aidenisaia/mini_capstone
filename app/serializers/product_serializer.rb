class ProductSerializer < ActiveModel::Serializer
  attributes [:id, :name, :price, :tax, :total, :is_discounted?, :created_at]
end
