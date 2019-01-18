class User < ApplicationRecord
  has_secure_password
  has_many :runs
  has_many :earned_books
end
