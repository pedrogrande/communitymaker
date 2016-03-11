class Event < ActiveRecord::Base
  belongs_to :user
  has_many :group_events
  has_many :groups, through: :group_events
end
