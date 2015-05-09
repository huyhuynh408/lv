post '/users/victories/new' do
  if request.xhr?
    victory = Victory.create(title: params[:title], user_id: current_user.id)
    erb :'victories/_welcome_victory', layout: false, locals: {victory: victory}
  else
    if current_user.id == nil
      redirect('/')
    else
      Victory.create(title: params[:title], user_id: current_user.id)
      redirect('/')
    end
  end
end

get '/users/victories/all' do
  @victories = Victory.all[-10..-1].reverse
  erb :'victories/all'
end

get '/users/:id/victories' do
  @victories = current_user.victories
  erb :'victories/user_victories'
end