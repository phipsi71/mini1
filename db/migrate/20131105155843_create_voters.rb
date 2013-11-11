class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.string :session_id
      t.datetime :logon_time

      t.timestamps
    end
  end
end
