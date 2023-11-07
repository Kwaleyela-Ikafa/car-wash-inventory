class CreateFormEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :form_entries do |t|
      t.string :customer_name
      t.string :contact
      t.string :service
      t.string :vehicle
      t.string :registration
      t.string :cleaner
      t.string :share
      t.string :share_percentage
      t.float :price
      t.string :p_m
      t.string :cashier
      t.string :comments

      t.timestamps
    end
  end
end
