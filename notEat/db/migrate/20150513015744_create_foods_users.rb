class CreateFoodsUsers < ActiveRecord::Migration
  def change
    create_table    :foods_users do |t|
      t.references  :food
      t.references  :user
    end
  end
end
