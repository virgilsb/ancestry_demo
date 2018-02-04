class CreateMessages < ActiveRecord::Migration[5.1]
  def self.up
    create_table :messages do |t|
      t.text :content
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
