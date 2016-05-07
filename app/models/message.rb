class Message < ActiveRecord::Base

  def self.reverse_order
    # Orders all the messages so it needs .self
    order(created_at: :desc)
  end

  def self.mine(user_id)
    where(receiver_id: user_id)
  end

  # scope :unread, -> { where(read: false) }
  def self.unread
    where(read: false)
  end
end
