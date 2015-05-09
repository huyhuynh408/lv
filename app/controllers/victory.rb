post '/users/victories/new' do
  if current_user.id == nil
    redirect('/')
  else
    Victory.create(title: params[:title], user_id: current_user.id)
  end
end

get '/users/victories/all' do
  "Hello World"
end

get '/users/:id/victories' do
  "Hello World"
end