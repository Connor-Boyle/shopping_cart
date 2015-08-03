before '/cart' do
  redirect '/signup' unless session[:user_id]
end

get '/cart' do
  @cart = session[:order]
  # @cart << LineItem.find_by_order_id(session[:order_id])
  erb :cart
end

post '/cart' do
  quantity = 1
  item_to_purchase = params[:item][:id]
  session[:order][item_to_purchase] = 1
  redirect '/cart'
end

