class StressReport < DailyReport
  belongs_to :user
  # validate :one_a_day

  def relax_score
    score = 0
    score = count
  end

end