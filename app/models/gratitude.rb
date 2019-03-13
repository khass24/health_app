class Gratitude < ApplicationRecord
  belongs_to :user

  def formatted_date
    created_at.strftime("%b %d, %Y")
  end
end
