class CreatePrelaunchs < ActiveRecord::Migration
  def change
    create_table :prelaunchs do |t|
      t.string :name
      t.string :zip
    end
  end
end
