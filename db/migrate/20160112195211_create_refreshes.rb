class CreateRefreshes < ActiveRecord::Migration
  def change
    create_table :refreshes do |t|
      t.string :note
      t.datetime :startdate
      t.datetime :expirydate

      t.timestamps null: false
    end
  end
end
