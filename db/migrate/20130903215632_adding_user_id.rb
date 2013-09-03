class AddingUserId < ActiveRecord::Migration
  def change
    add_column :flatmates, :user_id, :integer
  end
end
