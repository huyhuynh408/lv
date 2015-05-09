post '/users/victories/new' do
  if current_user.id == nil
    redirect('/')
  else
    Victory.create(title: params[:title], user_id: current_user.id)
    redirect('/')
  end
end

get '/users/victories/all' do

end

get '/users/:id/victories' do
  @victories = current_user.victories
  erb :'victories/user_victories'
end