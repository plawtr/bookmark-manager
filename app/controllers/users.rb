 module Controllers
  class Users < Base 
    get '/users/new' do
    	@user = User.new
    	erb :"users/new"
    end

    post '/users' do
    	@user = User.new(:email => params[:email],
    									:password => params[:password],
    									:password_confirmation => params[:password_confirmation])
    	if @user.save
  	  	session[:user_id] = @user.id
  	  	redirect to('/')
  	  else
  	  	flash.now[:errors] = @user.errors.full_messages
  	  	erb :"users/new" 
  	  end
    end

    get "/users/reset_password/:token" do
    	@user = User.first(:password_token => params[:token])
    	if @user && (Time.now-Time.parse(@user.password_token_timestamp))<3600
    		erb :"users/new_password"
    	else
  	  	flash[:notice] = "This password reset url does not exist or has expired."
  	  	redirect to '/'  		
    	end
    end

  end
end


