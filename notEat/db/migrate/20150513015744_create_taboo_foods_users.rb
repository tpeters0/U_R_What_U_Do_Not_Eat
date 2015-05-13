class CreateTabooFoodsUsers < ActiveRecord::Migration
  def change
    create_table    :taboo_foods_users do |t|
      t.references  :taboo_food
      t.references  :user
    end
  end
end
