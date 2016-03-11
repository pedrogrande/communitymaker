class Group < ActiveRecord::Base
  belongs_to :group_category
  has_many :photos
  has_many :posts
  has_many :group_events
  has_many :events, through: :group_events
  has_many :memberships
  has_many :users, through: :memberships

  # @group.events.each do |event|
  # @event.groups.each do |group|
  # @group.group_category.name

end
