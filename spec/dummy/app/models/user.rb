class User < ApplicationRecord
  has_one :profile
  validates :name, presence: true
end
