class CreateReasons < ActiveRecord::Migration
  def change
    create_table      :reasons do |t|
      t.text          :why
      t.timestamps    null: false
    end
  end
end
