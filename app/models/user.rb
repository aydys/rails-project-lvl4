# frozen_string_literal: true

class User < ApplicationRecord
  validates :nickname, presence: true, length: { in: 1..256 }
  validates :email, presence: true, uniqueness: true
  validates :token, presence: true
end
