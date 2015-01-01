module ApplicationHelper
  def vendor_signed_in?
    current_user.vendor?
  end
end
