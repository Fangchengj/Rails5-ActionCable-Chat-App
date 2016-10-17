class Message < ApplicationRecord
  validates :body, presence: true, length: {minimum: 2, maximum: 1000}
  belongs_to :user
  belongs_to :chat_room
end
