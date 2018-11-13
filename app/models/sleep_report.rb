class SleepReport < DailyReport
  belongs_to :user

  def score
    score = 0
    if count >= 7 && count <= 9
      score = 10
    elsif count >= 6 && count <= 10
      score = 7.5
    elsif count >= 5
      score = 5
    else
      score = 2.5
    end
  end
end