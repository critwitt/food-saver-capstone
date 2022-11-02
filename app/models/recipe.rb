class Recipe < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :steps, presence: true
  validates :user_id, presence: true
end
