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
  @victories = Victory.all[0..-1].reverse
  erb :'victories/all'
end

get '/users/victories/:id/vote' do
  victory = Victory.find_by_id(params[:id])
  victory.votes.create(count: 1)
  redirect('/users/victories/all')
end

get '/users/:id/victories' do
  @victories = current_user.victories.reverse
  erb :'victories/user_victories'
end
