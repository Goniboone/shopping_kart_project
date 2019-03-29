class CreateShoppingKarts < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_karts do |t|
      t.string :name

      t.timestamps
    end
  end
end
