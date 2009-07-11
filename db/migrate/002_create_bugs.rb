class CreateBugs < ActiveRecord::Migration
  def self.up
    create_table :bugs do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :repository_id
      t.string :name
      t.text :details
      t.boolean :next_release
      t.boolean :finished

      t.timestamps
    end
  end

  def self.down
    drop_table :bugs
  end
end
