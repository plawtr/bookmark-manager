require 'sinatra/base'

require_relative 'server'

require_relative './controllers/base'
Dir.glob(File.join(File.dirname(__FILE__), 'controllers', '*.rb'), &method(:require))

class Router < Sinatra::Base
  use Controllers::Links
  use Controllers::Users
  use Controllers::Authentication

  # start the server if ruby file executed directly
  run! if app_file == $0
end