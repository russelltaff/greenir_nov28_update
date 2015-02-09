class ElectricPackagesController < ApplicationController
  
  def index
    @zip_code = params['zip_code']
    # acceptable_zip_codes = [10001,10002,10003,10004,
    #                         10005,10006,10007,10008,
    #                         10009,10010,10011,10012]

    acceptable_zip_codes =  [10001,10002,10003,10004,10005,10006,10007,10008,10009,10010,10011,10012,10013,10014,10016,10017,10018,10019,10020,10021,10022,10023,10024,10025,10026,10027,10028,10029,10030,10031,10032,10033,10034,10035,10036,10037,10038,10039,10040,10041,10043,10044,10045,10055,10060,10065,10069,10075,10080,10081,10087,10090,10095,10101,10102,10103,10104,10105,10106,10107,10108,10109,10110,10111,10112,10113,10114,10115,10116,10117,10118,10119,10120,10121,10122,10123,10124,10125,10126,10128,10129,10130,10131,10132,10133,10138,10150,10151,10152,10153,10154,10155,10156,10157,10158,10159,10160,10161,10162,10163,10451,10452,10453,10454,10455,10456,10457,10458,10459,10460,10461,10462,10463,10464,10465,10466,10467,10468,10469,10470,10471,10472,10473,10474,10475,10499,11361,11362,11363,11364,11354,11355,11356,11357,11358,11359,11360,11365,11366,11367,11412,11423,11432,11433,11434,11435,11436,11101,11102,11103,11104,11105,11106,11374,11375,11379,11385,11691,11692,11693,11694,11695,11697,11004,11005,11411,11413,11422,11426,11427,11428,11429,11414,11415,11416,11417,11418,11419,11420,11421,11368,11369,11370,11372,11373,11377,11378,10301,10302,10303,10304,10305,10306,10307,10308,10309,10310,10311,10312,10313,10314,11201,11202,11203,11204,11205,11206,11207,11208,11209,11210,11211,11212,11213,11214,11215,11216,11217,11218,11219,11220,11221,11222,11223,11224,11225,11226,11228,11229,11230,11231,11232,11233,11234,11235,11236,11237,11238,11239,11241,11242,11243,11245,11247,11249,11251,11252,11256]

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
    params.require(:electric_package).permit(:name, :description, :terms, :plan_type, :price, :percent_renewable, :duration, :provider_id, :sales_id, :cancellation_fee, :contract_url)
  end

end
