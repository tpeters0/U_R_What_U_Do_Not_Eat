class CreateReasons < ActiveRecord::Migration
  def change
    create_table      :reasons do |t|
      t.belongs_to    :restriction
      t.text          :why
      t.timestamps    null: false
    end
  end
end
