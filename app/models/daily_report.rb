class DailyReport < ApplicationRecord
  belongs_to :user

  scope :today, -> { where(:created_at => (Time.now.beginning_of_day..Time.now.end_of_day)) }

  def formatted_date
    created_at.strftime("%b %d, %Y")
  end


  # def daily_score
  #   (move_score + nutrition_score + sleep_score + relax_score) / 4
  # end
end
