class ChangeColumnDuration < ActiveRecord::Migration
  def up
    execute 'ALTER TABLE electric_packages ALTER COLUMN duration TYPE integer USING (duration::integer)'
    execute 'ALTER TABLE archived_packages ALTER COLUMN duration TYPE integer USING (duration::integer)'

  end

  def down
    execute 'ALTER TABLE electric_packages ALTER COLUMN duration TYPE varchar(255) USING (duration::varchar(255))'
    execute 'ALTER TABLE archived_packages ALTER COLUMN duration TYPE varchar(255) USING (duration::varchar(255))'
  end
end