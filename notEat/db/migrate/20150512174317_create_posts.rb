class CreatePosts < ActiveRecord::Migration
  def change
    create_table      :posts do |t|
      t.belongs_to    :profile
      t.text          :content
      t.timestamps    null: false
    end
  end
end
