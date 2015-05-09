get '/' do
  length = Victory.all.size
  @victory = Victory.find_by_id(rand(length))
  @victory_random_three = [Victory.last, Victory.last, Victory.last]
  erb :index
end
