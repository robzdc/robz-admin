module ApplicationHelper
  def is_admin
    if user_signed_in?
      if current_user.user_type == 1
        return true
      else
        return false
      end
    end
  end
end
