class Photo < ActiveRecord::Base
  belongs_to :user
  mount_uploader :url, PhotoUploader

  delegate :profile, to: :user

  def user_fullname
    "#{profile.first_name} #{profile.last_name}"
  end

  def friendly_created_at
    created_at.strftime('%b %d, %Y')
  end
end
