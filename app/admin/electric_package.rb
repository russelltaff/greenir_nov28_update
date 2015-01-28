ActiveAdmin.register ElectricPackage do


 permit_params :name, :description, :terms, :plan_type, :price, :percent_renewable, :duration, :provider_id, :sales_id, :cancellation_fee, :contract_url

end
