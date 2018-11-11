class DailyReport < ApplicationRecord
  belongs_to :user

  scope :today, -> { where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day)) }

  def formatted_date
    created_at.strftime("%b %d, %Y")
  end 
    
  def daily_score
    (@movement_score + @sleeps_score + @stress_score + @calorie_score) / 4
  end

end
