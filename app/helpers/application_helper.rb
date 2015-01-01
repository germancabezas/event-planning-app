module ApplicationHelper
  def vendor_signed_in?
    current_user && current_user.vendor?
  end

  def user_is_owner?(photo)
    current_user && photo.user_id == current_user.id
  end
end
