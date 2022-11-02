class Ingredient < ApplicationRecord
    validates :name, presence: true
    validates :perishable, presence: true
    validates :shelf_life, presence: true, if: -> {perishable}
end
