class PrelaunchesController < ApplicationController

	def prelaunch
		@prelaunch = Prelaunch.new
	end

	def create
		puts params[prelaunchs_params]
		@prelaunchs = Prelaunch.create(prelaunchs_params)
		redirect_to '/thanks'
	end

	private

	def prelaunchs_params
			params.require(:prelaunch).permit(:email, :zip)
	end

end