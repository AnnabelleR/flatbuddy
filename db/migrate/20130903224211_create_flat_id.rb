class CreateFlatId < ActiveRecord::Migration
  def change
    add_column :flatmates, :flat_id, :integer
  end

end
