class ShoppingKart < ApplicationRecord
  has_many :foods, inverse_of: :shopping_kart
  accepts_nested_attributes_for :foods, reject_if: :all_blank, allow_destroy: true
end
