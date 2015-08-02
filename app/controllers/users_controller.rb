delete '/session' do
  session[:user_id] = nil
  redirect '/signup'
end

post '/users' do
  user = User.create(params[:user])
  session[:user_id] = user.id
  redirect '/'
end

get '/signup' do
  erb :signup
end

post '/session' do
  user = User.find_by_email(params[:user][:email])
  if user
    if user.password == params[:user][:password]
      session[:user_id] = user.id
      redirect '/'
    end
  end
  @login_error = true
  redirect '/signup'
end


