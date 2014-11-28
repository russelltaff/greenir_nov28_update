class UserEmailsController < ApplicationController

	def create
		puts params[user_email_params]
		@current_page = params[:current_page]
		@user_email = UserEmail.create(user_email_params)
		redirect_to '/electric_packages/checkout/'+@current_page+""
	end

	private

	def user_email_params
		params.require(:user_email).permit(:email)
	end

end
