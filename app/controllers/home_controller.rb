# before '/login' do
#   redirect '/' if session[:user_id]
# end

# before '/' do
#   redirect '/login' unless session[:user_id]
# end

get '/' do
  redirect '/signup' unless session[:user_id]
  puts session.inspect
  if  User.find_by_id(session[:user_id])
    @user = User.find_by_id(session[:user_id])
    @products = Product.all
    erb :index
  else
  @error = "No User with this ID"
   erb :error
  end
end

get '/login' do
  erb :login
end
