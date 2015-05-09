get '/tags/:id' do
  @tag = Tag.find_by_id(params[:id])
  erb :'tags/show'
end
