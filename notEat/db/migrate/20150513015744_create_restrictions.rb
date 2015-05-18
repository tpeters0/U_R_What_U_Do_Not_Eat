class CreateRestrictions < ActiveRecord::Migration
  def change
    create_table    :restrictions do |t|
      t.belongs_to  :food
      t.belongs_to  :profile
      t.text        :comment
    end
  end
end
