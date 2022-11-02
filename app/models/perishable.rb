class Perishable < ApplicationRecord
  belongs_to :user
  belongs_to :ingredient

  validates :user_id, presence: true
  validates :ingredient_id, presence: true
  validates :date_entered, presence: true
end
