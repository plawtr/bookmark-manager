require 'sinatra/base'

class BoomarkManager < Sinatra::Base
  get '/' do
    'Hello BoomarkManager!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
