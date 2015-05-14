class CreateReasonsRestricts < ActiveRecord::Migration
  def change
    create_table    :reasons_restricts, id:false do |t|
      t.references  :reasons
      t.references  :foods_users
    end
  end
end
