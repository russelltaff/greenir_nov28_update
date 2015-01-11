class ProvidersController < ApplicationController

	def update
    @provider = Provider.find(params[:id])

    respond_to do |format|
      if @provider.update_attributes(params[:provider])
        format.html { redirect_to @electric_package, notice: 'Package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @eprovider.errors, status: :unprocessable_entity }
      end
    end
  end

private

  def provider
    params.require(:provider).permit(:name, :name, :logo, :description)
  end

end