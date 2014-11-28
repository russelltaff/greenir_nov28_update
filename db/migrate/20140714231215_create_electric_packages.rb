class CreateElectricPackages < ActiveRecord::Migration
  def change
    create_table :electric_packages do |t|
      t.string :name
      t.text :description
      t.text :terms
      t.string :type
      t.string :price
      t.string :percent_renewable
      t.string :duration
      t.integer :provider_id
      t.integer :sales_id
      t.string :cancellation_fee

      t.timestamps
    end
  end
end
