class CreateHappyWeekNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :happy_week_nodes do |t|
      t.string :activity
      t.string :operator
      t.timestamps
    end
  end
end
