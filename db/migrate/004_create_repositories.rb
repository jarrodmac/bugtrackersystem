class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories do |t|
     t.integer :user_id, :default => 0, :null => false
     t.string :name, :limit => 100, :default => "", :null => false
      t.text :details

      t.timestamps
    end
  end

  def self.down
    drop_table :repositories
  end
end
