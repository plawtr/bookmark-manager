require 'sinatra/base'
require_relative 'link'

class BookmarkManager < Sinatra::Base

	enable :sessions
	set :views, File.join(File.dirname(__FILE__), '../views')

  get '/' do
  	@links = Link.all
    erb :index
  end

  post '/' do
  	session[:links] << Link.new(params[:new_link])
  	@links = session[:links]
  	erb :index	
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
