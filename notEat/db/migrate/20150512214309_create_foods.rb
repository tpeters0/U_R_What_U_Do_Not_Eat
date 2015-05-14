class CreateFoods < ActiveRecord::Migration
  def change
    create_table    :foods do |t|
      t.text        :name
      t.timestamps  null: false
    end
  end
end
