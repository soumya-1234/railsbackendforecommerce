class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.string :pname
      t.string :pimage
      t.integer :pprice

      t.timestamps
    end
  end
end
