class RenamingLastNameUserField < ActiveRecord::Migration[6.0]
  def change
  rename_column :users, :AddLastNametoUsers, :last_name
  end
end
