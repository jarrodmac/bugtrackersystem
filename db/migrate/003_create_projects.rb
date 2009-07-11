class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
     t.integer :user_id, :default => 0, :null => false 
	 t.string :name, :limit => 100, :default => "", :null => false
      t.text :details
	  t.boolean :finished, :null => false, :default => false
   

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
