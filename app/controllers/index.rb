get '/' do
  if current_user == nil
    length = Victory.all.length
    @victory = Victory.find_by_id(rand(length-2))
    @victory_random_three = Victory.all.sample(3)
  else
    user = User.find_by_id(current_user.id)
    victories = user.victories
    @victory = victories[rand(victories.length-2)]
    @victory_random_three = victories.sample(3)
  end
  @victory_random_four = Victory.all.sample(4)
  erb :index
end
