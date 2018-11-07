class MovementReport < DailyReport
  belongs_to :user
  # validate :one_a_day
  
  def move_score
    score = 0
    if count >= 12500
      score = 10
    elsif count >= 10000
      score = 8
    elsif count >= 7500
      score = 6
    elsif count >= 5000
      score = 4
    else
      score = 2
    end
  end

end