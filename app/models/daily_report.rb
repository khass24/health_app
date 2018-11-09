class DailyReport < ApplicationRecord
  belongs_to :user

  scope :today, -> { where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day)) }

  def formatted_date
    created_at.strftime("%b %d, %Y")
  end

end
