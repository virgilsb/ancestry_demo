class AddAncestryToHappyWeekNodes < ActiveRecord::Migration[5.1]
  def change
    add_column :happy_week_nodes, :ancestry, :string
    add_index :happy_week_nodes, :ancestry
  end
end
