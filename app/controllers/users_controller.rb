class UsersController < ApplicationController

	def create
		puts params[user_params]
		@user = User.create(user_params)
		redirect_to '/thank-you'
	end

	def thank_you

	end

	def coming_soon

	end

	private

	  	def user_params
    		params.require(:user).permit(:name, :email, :address_1, :address_2, :city, :zip, :lease_termination_date, :con_ed_id, :package_id)
  		end

end
