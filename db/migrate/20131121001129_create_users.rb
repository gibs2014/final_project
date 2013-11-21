class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.date :date_of_birth
      t.string :email
      t.string :waist_size
      t.string :hip_size
      t.string :bra_size
      t.integer :body_shape_id
    end
  end
end
