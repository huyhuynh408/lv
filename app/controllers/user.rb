get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  @user = User.find_by_username(params[:username])

  if @user.password == params[:password]
    set_user(@user)
    redirect("/users/#{@user.id}")
  else
    redirect("/login")
  end
end

get '/users/signup' do
  erb :'users/signup'
end

post '/users/signup' do
  @user          = User.new(params[:user])
  @user.password = params[:password]

  if @user.valid?
    @user.save!
    set_user(@user)
    redirect("/user/#{@user.id}")
  else
    redirect("/signup")
  end
end

get '/users/logout' do
  clear_user
  redirect('/')
end

get '/users/:id' do
  "can see stats of most victories per month, maybe a chart or graph? best day, etc"
end