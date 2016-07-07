class User < ActiveRecord::Base

  validates :username, presence: true
  has_secure_password
  has_many :Books


  def timeline
    user_ids = following_users.pluck(:id)
    user_ids.push(id)
    Book.where(user_id: user_ids).order("created_at DESC")
  end
end
