# before '/login' do
#   redirect '/' if session[:user_id]
# end

# before '/' do
#   redirect '/login' unless session[:user_id]
# end

get '/' do
  user = User.find_by_id(session[:user_id])
  @products = Product.all
  erb :index
end

get '/login' do
  erb :login
end
