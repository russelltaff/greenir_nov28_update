class CreateArchivedPackages < ActiveRecord::Migration
  def change
    create_table :archived_packages do |t|
      t.string :name
      t.text :description
      t.text :terms
      t.string :type
      t.float :price
      t.float :percent_renewable
      t.string :duration
      t.integer :provider_id
      t.integer :sales_id
      t.float :cancellation_fee
      t.timestamp :package_creation_date

      t.timestamps
    end
  end
end
