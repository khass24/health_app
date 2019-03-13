class RemoveDateFromDailyReport < ActiveRecord::Migration[5.2]
  def change
    remove_column :daily_reports, :date, :date
  end
end
