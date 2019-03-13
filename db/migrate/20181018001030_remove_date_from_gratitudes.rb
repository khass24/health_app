class RemoveDateFromGratitudes < ActiveRecord::Migration[5.2]
  def change
    remove_column :gratitudes, :date, :datetime
  end
end
