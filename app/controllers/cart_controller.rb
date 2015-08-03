get '/cart' do
  @cart = session[:order]
  erb :cart
end

post '/cart' do
  item = params[:order][:item]
  session[:order][item]
  puts session[:order]
  redirect '/cart'
end

