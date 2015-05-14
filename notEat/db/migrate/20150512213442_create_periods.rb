class CreatePeriods < ActiveRecord::Migration
  def change
    create_table      :periods do |t|
      t.text          :when
      t.timestamps    null: false
    end
  end
end
