class ForgotAccountNumberEmailsController < ApplicationController

	def create
		@current_page = params[:current_page]
		@user_email = ForgotAccountNumberEmail.create(forgot_account_number_email_params)
		redirect_to '/electric_packages/checkout/'+@current_page+""
	end

	private

	def forgot_account_number_email_params
		params.require(:user_email).permit(:email)
	end

end
