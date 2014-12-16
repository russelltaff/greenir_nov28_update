ActiveAdmin.register ElectricPackage do


 permit_params :name, :description, :terms, :plan_type, :percent_renewable, :duration, :cancellation_fee, :contract_url

end
