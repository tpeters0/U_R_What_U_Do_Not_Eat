class CreateRestrictReasons < ActiveRecord::Migration
  def change
    create_table    :restrict_reasons, id:false do |t|
      t.references  :reasons
      t.references  :taboo_foods_users
    end
  end
end
