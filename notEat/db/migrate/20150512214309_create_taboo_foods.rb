class CreateTabooFoods < ActiveRecord::Migration
  def change
    create_table :taboo_foods do |t|

      t.timestamps null: false
    end
  end
end
