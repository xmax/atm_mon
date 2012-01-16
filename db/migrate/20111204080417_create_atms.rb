class CreateAtms < ActiveRecord::Migration
  def change
    create_table :atms do |t|
      t.string		:atm_code
      t.string		:atm_city
      t.string		:atm_address

      t.timestamps
    end
  end
end
