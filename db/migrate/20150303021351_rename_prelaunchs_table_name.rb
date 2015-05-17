class RenamePrelaunchsTableName < ActiveRecord::Migration
  def self.up
    rename_table :prelaunchs, :prelaunches
  end
  def self.down
    rename_table :prelaunches, :prelaunchs
  end
end
