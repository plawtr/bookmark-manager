require 'sinatra/base'
require_relative 'server'
require_relative 'link'
require_relative 'tag'


class BookmarkManager < Sinatra::Base

	enable :sessions
	set :views, File.join(File.dirname(__FILE__), '../views')

  get '/' do
  	@links = Link.all
    erb :index
  end

  post '/links' do
  	url = params["url"]
  	title = params["title"]
  	tags = params["tags"].split(" ").map{|tag| Tag.first_or_create(:text => tag)} 
		Link.create(:url => url, :title => title, :tags => tags)

  	redirect to('/')	
  end

  get '/tags/:text' do 
  	tag = Tag.first(:text => params[:text])
  	@links = tag ? tag.links : []
  	erb :index
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
