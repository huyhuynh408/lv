helpers do
  def current_user_id
    session[:user_id]
  end

  def current_user
    User.find_by_id(current_user_id)
  end

  def set_user_id(id)
    session[:user_id] = id
  end

  def clear_user
    set_user_id(nil)
  end
end
