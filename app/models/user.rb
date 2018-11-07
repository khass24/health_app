class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :gratitudes

  has_many :daily_reports
  has_many :movement_reports
  has_many :sleep_reports
  has_many :stress_reports
  has_many :nutrition_reports

end
