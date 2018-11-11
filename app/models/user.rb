class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :gratitudes

  has_many :daily_reports
  has_many :movement_reports
  has_many :sleep_reports
  has_many :stress_reports
  has_many :nutrition_reports

  def daily_score
    scores = []
    scores << current_user.movement_reports.last.score if movement_reports.any?
    scores << current_user.sleep_reports.last.score if sleep_reports.any?
    scores << current_user.stress_reports.last.score if stress_reports.any?
    scores << current_user.nutrition_reports.last.score if nutrition_reports.any?
    score.sum / score.length
  end

end
