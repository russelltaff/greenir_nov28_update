class NotAvailablesController < ApplicationController

	def index
		url = request.original_url
		parsed = y = URI.parse(url)
		zip_hash = CGI.parse(parsed.query)
		@zip = zip_hash['zip'][0]
		@not_available = NotAvailable.new
		# binding.pry

	end

	def create
		puts params[not_available_params]
		@not_available = NotAvailable.create(not_available_params)
		redirect_to '/'
	end
	

	private

		def not_available_params
			params.require(:not_available).permit(:email, :zip)
		end

end
