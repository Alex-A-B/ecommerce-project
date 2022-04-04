class Order < ApplicationRecord
    belongs_to :user, optional: true
    has_many :selected_products
    has_many :products, through: :selected_products
end
