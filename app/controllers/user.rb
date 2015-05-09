get '/users/login' do
  erb :'users/login'
end

post '/users/login' do
  "Hello World"
end

get '/users/signup' do
  erb :'users/signup'
end

post '/users/new' do
  "Hello World"
end

get '/users/logout' do
  "Hello World"
end

get '/users/:id' do
  "can see stats of most victories per month, maybe a chart or graph? best day, etc"
end