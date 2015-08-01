# before '/login' do
#   redirect '/' if session[:user_id]
# end

# before '/' do
#   redirect '/login' unless session[:user_id]
# end

get '/' do
  erb :index
end

get '/login' do
  erb :login
end
