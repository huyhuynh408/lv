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
    Victory.create(title: "i created a little victories account today", user_id: @user.id)
    redirect("/users/#{@user.id}")
  else
    redirect("/signup")
  end
end

get '/users/logout' do
  clear_user
  redirect('/')
end

get '/users/:id' do
  redirect('/')
  "can see stats of most victories per month, maybe a chart or graph? best day, etc"
end