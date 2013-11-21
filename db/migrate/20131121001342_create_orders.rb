class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.boolean :complete
      t.timestamps
    end
  end
end
