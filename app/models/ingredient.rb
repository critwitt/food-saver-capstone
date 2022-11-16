class Ingredient < ApplicationRecord
    validates :name, presence: true
    validates :perishable, inclusion: [true, false]
    validates :shelf_life, presence: true, if: :perishable?
    validates :image, presence: true
    validates :category, presence: true
end
