class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :name
      t.integer :quantity
      t.belongs_to :task

      t.timestamps
    end
    add_index :resources, :task_id
  end
end
