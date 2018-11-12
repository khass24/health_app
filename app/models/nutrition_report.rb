class NutritionReport < DailyReport
  belongs_to :user

  def score
    score = 0
    if count >= 2600 && count <= 2800
      score = 10
    elsif count >= 2400 && count <= 3000
      score = 7.5
    elsif count >= 2000 && count <= 3200
      score = 5
    else
      score = 2.5
    end
  end
end