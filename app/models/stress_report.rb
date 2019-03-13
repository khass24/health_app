class StressReport < DailyReport
  belongs_to :user

  def score
    score = count
  end

end