class Profile < ActiveRecord::Base
  belongs_to :user

  validates :first_name, :last_name, :dob, presence: true

  mount_uploader :profile_pic, ProfilePicUploader
  
  def full_name
    [first_name, last_name].compact.join(' ')
  end
end
