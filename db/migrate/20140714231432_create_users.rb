class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_number
      t.string :con_ed_id
      t.string :home_ownership_type
      t.string :lease_termination_date
      t.integer :package_id

      t.timestamps
    end
  end
end
