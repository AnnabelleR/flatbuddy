class CreateFlatmates < ActiveRecord::Migration
  def change
    create_table :flatmates do |t|
      t.string :name

      t.timestamps
    end
  end
end
