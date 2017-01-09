class Question < ApplicationRecord
  has_many :answers
  
  validates :title, presence: true, length: { minimum: 40 }
  validates :descriptions, presence: true, length: { minimum: 150 }
end
