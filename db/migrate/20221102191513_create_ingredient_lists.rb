class CreateIngredientLists < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredient_lists do |t|
      t.belongs_to :ingredient, null: false, foreign_key: true
      t.belongs_to :recipe, null: false, foreign_key: true
      t.integer :ingredient_amount
      t.string :unit

      t.timestamps
    end
  end
end
