class UserEmails < ActiveRecord::Migration
  def change
  	create_table :user_emails do |t|
      t.string :email

      t.timestamps
  	end

  end
end
