class ElectricPackage < ActiveRecord::Base

	belongs_to :provider
	has_many :forgot_account_number_emails

end
