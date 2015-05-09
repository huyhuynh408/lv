def current_user
  session[:user]
end

def set_user(user)
  session[:user] = user
end

def clear_user
  set_user(nil)
end