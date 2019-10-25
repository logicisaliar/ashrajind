class CreateOils < ActiveRecord::Migration[5.2]
  def change
    create_table :oils do |t|
      t.string :name
      t.string :code
      t.string :kind
      t.float :inr
      t.float :eur
      t.float :dol
      t.string :genus_name
      t.string :specific_epithet
      t.boolean :fine_fragrance
      t.boolean :personal_care
      t.boolean :home_care
      t.boolean :food
      t.text :description

      t.timestamps
    end
  end
end
