class GroupCategory < ActiveRecord::Base
  has_many :groups

  # @group_category.groups.each do |group|
  # @group_category.groups.first(5).each do
end
