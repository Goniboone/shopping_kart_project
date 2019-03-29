class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :item
      t.belongs_to :shopping_kart, foreign_key: true

      t.timestamps
    end
  end
end
