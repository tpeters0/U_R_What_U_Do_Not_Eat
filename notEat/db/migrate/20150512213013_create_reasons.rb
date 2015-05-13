class CreateReasons < ActiveRecord::Migration
  def change
    create_table      :reasons do |t|
      t.text          :reason_name
      t.timestamps    null: false
    end
  end
end
