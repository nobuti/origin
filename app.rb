class App < Sinatra::Application

  configure do
    env = ENV['RACK_ENV'] || 'development'
    enable   :logging
    enable   :raise_errors
    set      :root, File.dirname(__FILE__)
    set      :erb, :format => :html5
    enable :partial_underscores
  end

  configure :development do |config|
    require 'rack-livereload'
    use Rack::LiveReload
    enable   :show_exceptions
  end

  get '/' do
    erb :index
  end

  not_found do
   erb '404'.to_sym, :layout => false
  end

end