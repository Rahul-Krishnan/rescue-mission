class Answer < ApplicationRecord
  belongs_to :question

  validates :answer_description, presence: true, length: { minimum: 50 }
end
