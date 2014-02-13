require 'rack-flash'

require_relative '../helpers/application'

module Controllers
  class Base < Sinatra::Base

  	enable :sessions
  	set :session_secret, "Bookmarks suck!"

  	use Rack::Flash
  	use Rack::MethodOverride

    helpers ServerHelper

  	set :views, File.join(File.dirname(__FILE__), '../views')
  	set :public, File.join(File.dirname(__FILE__), '../public')

  end
end





