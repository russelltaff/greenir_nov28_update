class ForgotAccountNumberEmails < ActiveRecord::Migration
  def change
  	create_table :forgot_account_number_emails do |t|
      t.string :email

      t.timestamps
  	end

  end
end
