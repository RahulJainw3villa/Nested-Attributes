class Product < ApplicationRecord
    has_many :product_varients
    accepts_nested_attributes_for :product_varients
end
