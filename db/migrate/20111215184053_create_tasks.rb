class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.belongs_to :project

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
