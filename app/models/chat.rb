class Chat < ApplicationRecord
  has_many :chat_users
  has_many :users, through: :chat_users
  has_many :messages, dependent: :destroy

  def find_other_user_username(current_user)
    other_user = users.joins(:chat_users).where.not(id: current_user.id).first
    other_user.username
  end
end
