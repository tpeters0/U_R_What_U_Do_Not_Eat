class CreatePosts < ActiveRecord::Migration
  def change
    create_table      :posts do |t|
      t.belongs_to    :profile
      t.string        :title
      t.text          :content
      t.references    :food, :reason
      t.timestamps    null: false
    end
  end
end
