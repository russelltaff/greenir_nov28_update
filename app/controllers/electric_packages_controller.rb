class ElectricPackagesController < ApplicationController
  
  def index
    @zip_code = params['zip_code']
    acceptable_zip_codes = [10001,10002,10003,10004,
                            10005,10006,10007,10008,
                            10009,10010,10011,10012]

    if !acceptable_zip_codes.include? @zip_code.to_i
      redirect_to root_path
    end

    @electric_packages_variable = ElectricPackage.all.order("price").where(:plan_type => "variable")[0..2]
    @electric_packages_fixed = ElectricPackage.all.order("price").where(:plan_type => "fixed")[0..2]
  end


  def show
    id = params['id']
    @electric_package = ElectricPackage.find(id)
  end

  def checkout
    id = params['id']
    @electric_package = ElectricPackage.find(id)
    @user = User.new
    @user_email = UserEmail.new
  end

  def purchase

  end
end
