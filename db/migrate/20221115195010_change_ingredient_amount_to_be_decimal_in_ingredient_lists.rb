class ChangeIngredientAmountToBeDecimalInIngredientLists < ActiveRecord::Migration[7.0]
  def change
    change_column :ingredient_lists, :ingredient_amount, :decimal
  end
end
