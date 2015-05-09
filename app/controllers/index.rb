get '/' do
  @victory = Victory.first
  erb :index
end
