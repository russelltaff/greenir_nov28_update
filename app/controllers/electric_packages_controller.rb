class ElectricPackagesController < ApplicationController
  
  def index
    @zip_code = params['zip_code']
    acceptable_zip_codes = [10001,10002,10003,10004,
                            10005,10006,10007,10008,
                            10009,10010,10011,10012]

    if !acceptable_zip_codes.include? @zip_code.to_i
      redirect_to '/coming-soon'
    end

    @electric_packages_variable = ElectricPackage.all.order("price").where(:plan_type => "variable")[0..2]
    @electric_packages_fixed = ElectricPackage.all.order("price").where(:plan_type => "fixed")[0..2]
  end

  def all
    @all_variable = ElectricPackage.all.order("price").where(:plan_type => "variable")
    @all_fixed = ElectricPackage.all.order("price").where(:plan_type => "fixed")
  end

  def show
    @zip_code = params[:zip_code]
    print @zip_code
    @all_variable = ElectricPackage.all.order("price").where(:plan_type => "variable")
    @all_fixed = ElectricPackage.all.order("price").where(:plan_type => "fixed")
  end

  def checkout
    id = params['id']
    @electric_package = ElectricPackage.find(id)
    @user = User.new
    @user_email = ForgotAccountNumberEmail.new
  end

def update
    @electric_package = ElectricPackage.find(params[:id])

    respond_to do |format|
      if @electric_package.update_attributes(params[:electric_package])
        format.html { redirect_to @electric_package, notice: 'Package was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @electric_package.errors, status: :unprocessable_entity }
      end
    end
  end


  def coming_soon

  end

  private

  def electric_package
    params.require(:electric_package).permit(:name, :description, :terms, :plan_type, :percent_renewable, :duration, :cancellation_fee, :contract_url)
  end
end
