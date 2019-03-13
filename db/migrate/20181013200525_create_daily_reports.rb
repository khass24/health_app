class CreateDailyReports < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_reports do |t|
      t.integer :user_id
      t.integer :count
      t.date :date
      t.integer :quality
      t.string :type

      t.timestamps
    end
  end
end
