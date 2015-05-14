class CreatePeriodsRestricts < ActiveRecord::Migration
  def change
    create_table    :periods_restricts, id:false do |t|
      t.references  :foods_users
      t.references  :periods
    end
  end
end
