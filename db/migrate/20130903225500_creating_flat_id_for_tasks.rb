class CreatingFlatIdForTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :flat_id, :integer
  end
end
