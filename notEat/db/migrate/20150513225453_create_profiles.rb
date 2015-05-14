class CreateProfiles < ActiveRecord::Migration
  def change
    create_table    :profiles do |t|
      t.string      :name
      t.boolean     :admin
      t.belongs_to  :user
      t.timestamps  null: false
    end
  end
end
