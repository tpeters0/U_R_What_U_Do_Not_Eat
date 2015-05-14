class CreateRestrictTime < ActiveRecord::Migration
  def change
    create_table :restrict_times, id:false do |t|
      t.references  :taboo_foods_users
      t.references  :time_periods
    end
  end
end
