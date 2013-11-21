class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :category_id
      t.string :color
      t.string :brand
      t.float :price
    end
  end
end
