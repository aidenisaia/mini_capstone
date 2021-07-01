class ProductSerializer < ActiveModel::Serializer
  attributes [:id, :name, :price, :images, :supplier, :is_discounted?, :categories, :created_at, :updated_at]
end
