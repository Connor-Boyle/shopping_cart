
# get '/item/:id' do
#   @this_item = Product.find_by(:id => params[:id])
#   erb :item
# end

get '/item/:id' do
  @this_item = Product.find_by(:id => params[:id])
  erb :item
end
