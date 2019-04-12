class MovementReport < DailyReport
  belongs_to :user
  
  def score
    score = 0
    if count >= 10000
      score = 10
    elsif count >= 8000
      score = 8
    elsif count >= 5000
      score = 6
    elsif count >= 4000
      score = 4
    else
      score = 2
    end
  end
end