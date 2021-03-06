class Friendship < ActiveRecord::Base
include PublicActivity::Model

  belongs_to :user
  belongs_to :friend, class_name: "User"


  def accept_friendship
    self.update_attributes(state: "active", friended_at: Time.now)
  end

  def deny_friendship
    self.destroy
  end

  def pending_friend_requests_from
    self.inverse_friendships.where(state: "pending")
  end

  def pending_friend_requests_to
    self.friendships.where(state: "pending")
  end

  def cancel_friendship
    self.destroy
  end

  def active_friends
    self.friendships.where(state: "active").map(&:friend)+ self.inverse_friendships.where(state: "active").map(&:user)
  end
end
