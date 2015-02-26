class CreateNotAvailable < ActiveRecord::Migration
  def change
    create_table :not_availables do |t|
      t.string :email
      t.string :zip
    end
  end
end
