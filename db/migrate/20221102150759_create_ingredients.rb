class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.boolean :perishable
      t.integer :shelf_life

      t.timestamps
    end
  end
end
