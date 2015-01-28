class AddPackageIdToForgotAccountNumberEmails < ActiveRecord::Migration
  def change
    add_column :forgot_account_number_emails, :package_id, :integer
  end
end
