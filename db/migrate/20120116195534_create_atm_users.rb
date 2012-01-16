class CreateAtmUsers < ActiveRecord::Migration
  def change
    create_table :atm_users do |t|
      t.string		:user_first_name
      t.string		:user_last_name
      t.datetime	:user_active_begin
      t.datetime	:user_active_end

      t.timestamps
    end
  end
end
