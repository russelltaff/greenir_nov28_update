class ChangeColumnTypeToPlanTypeInElectricPackages < ActiveRecord::Migration
  def change
    rename_column :electric_packages, :type, :plan_type
  end
end
