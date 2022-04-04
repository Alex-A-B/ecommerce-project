class Product < ApplicationRecord
    has_many :selected_products, dependent: :destroy
end
