
# get '/item/:id' do
#   @this_item = Product.find_by(:id => params[:id])
#   erb :item
# end

get '/item/:id' do
  @user = User.find_by_id(session[:user_id])
  @this_item = Product.find_by(:id => params[:id])
  erb :item
end

delete '/item/:id' do
  @this_item = LineItem.find_by(:id => params[:id])
  @this_item.destroy
  redirect '/cart'
end
