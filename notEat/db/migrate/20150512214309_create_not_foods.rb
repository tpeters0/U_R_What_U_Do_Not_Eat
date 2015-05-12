class CreateNotFoods < ActiveRecord::Migration
  def change
    create_table :not_foods do |t|

      t.timestamps null: false
    end
  end
end
