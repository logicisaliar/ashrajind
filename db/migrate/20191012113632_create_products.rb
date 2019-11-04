class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.integer :s_no
      t.float :mrp
      t.boolean :bakery
      t.boolean :icecream
      t.boolean :soft_drink
      t.boolean :other
      t.text :description
      t.boolean :disp
      t.boolean :top_selling
      t.boolean :powder
      t.boolean :premium
      t.boolean :sdc
      t.boolean :chocolate
      t.boolean :vanilla
      t.boolean :fruit
      t.boolean :indian
      t.boolean :spice

      t.timestamps
    end
  end
end
