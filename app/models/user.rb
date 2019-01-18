class User < ApplicationRecord
  has_secure_password
  has_many :runs
  has_many :earned_books

  def check_earnings
    seconds_per_six_days = 60 * 60 * 24 * 6
    if earned_books.length > 0 && DateTime.now.beginning_of_day - earned_books[-1].created_at > seconds_per_six_days
      # a book hasn't been earned in the past 7 days
      if runs[-7] && DateTime.now.beginning_of_day - runs[-7].created_at < seconds_per_six_days
        # runs have occured on each of the past 7 days
        EarnedBook.new(status: "earned", user_id: id)
      end
    end
  end
end
