class ScrapnizeApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    set :haml, :format => :html5
  end
  get '/' do
    haml :index
  end
end
