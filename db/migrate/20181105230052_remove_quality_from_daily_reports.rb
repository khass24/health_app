class RemoveQualityFromDailyReports < ActiveRecord::Migration[5.2]
  def change
    remove_column :daily_reports, :quality, :integer
  end
end
