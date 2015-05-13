class CreateTimePeriods < ActiveRecord::Migration
  def change
    create_table      :time_periods do |t|
      t.text          :time_pd_name
      t.timestamps    null: false
    end
  end
end
