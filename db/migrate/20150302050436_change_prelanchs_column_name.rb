class ChangePrelanchsColumnName < ActiveRecord::Migration

	def change
		rename_column :prelaunchs, :name, :email
	end

end
