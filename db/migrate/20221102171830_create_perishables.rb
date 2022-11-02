class CreatePerishables < ActiveRecord::Migration[7.0]
  def change
    create_table :perishables do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :ingredient, null: false, foreign_key: true
      t.date :date_entered
      t.boolean :expired

      t.timestamps
    end
  end
end
