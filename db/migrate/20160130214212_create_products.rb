class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.integer :product
      t.string :message

      t.timestamps
    end
  end
end
