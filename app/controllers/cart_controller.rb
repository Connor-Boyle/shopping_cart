before '/cart' do
  redirect '/signup' unless session[:user_id]
end

get '/cart' do
  @user = User.find_by_id(session[:user_id])
  if Order.where(user_id: session[:user_id], filled_at: nil)
    @order = Order.where(user_id: session[:user_id], filled_at: nil).first
    @cart = []
    @cart << LineItem.find_by_order_id(@order.id)
  end
  erb :cart
end

post '/cart' do
  unless @order = Order.where(user_id: session[:user_id], filled_at: nil).first
    @order = Order.create(user_id: session[:user_id])
  end

  @item_to_purchase = Product.find_by_id(params[:item][:id])
  LineItem.create(order_id: @order.id, product_id: @item_to_purchase.id, price_at_time_of_selection: @item_to_purchase.price)
  redirect '/cart'
end

