get '/users/login' do
  if request.xhr?
    erb :'users/login', layout: false
  else
    erb :'users/login'
  end
end

post '/users/login' do
  @user = User.find_by_username(params[:username])

  if @user.password == params[:password]
    set_user_id(@user.id)
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
    @user.save
    set_user_id(@user.id)
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
