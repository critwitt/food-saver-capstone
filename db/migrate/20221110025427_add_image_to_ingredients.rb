class AddImageToIngredients < ActiveRecord::Migration[7.0]
  def change
    add_column :ingredients, :image, :string
  end
end
