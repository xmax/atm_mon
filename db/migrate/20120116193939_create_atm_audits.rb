class CreateAtmAudits < ActiveRecord::Migration
  def change
    create_table :atm_audits do |t|
      t.integer		:atm_id
      t.datetime	:inkass_time
      t.datetime	:inkass_time_end
      t.integer		:cas_a
      t.integer		:cas_b
      t.integer		:cas_c
      t.integer		:cas_d
      t.integer		:cas_e
      t.integer		:cas_f
      t.integer		:cas_g
      t.integer		:cas_h
      t.integer		:atm_denom_id
      t.integer		:atm_user_id

      t.timestamps
    end
  end
end
