class StressReport < DailyReport
  belongs_to :user

  def score
    score = 0
    score = count
  end

end