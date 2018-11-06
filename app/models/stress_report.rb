class StressReport < DailyReport
  belongs_to :user

  def relax_score
    score = 0
    score = count
  end

end