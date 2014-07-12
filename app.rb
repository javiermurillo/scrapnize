class ScrapnizeApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    set :haml, :format => :html5
  end
  get '/' do
    haml :index
  end

  post '/site' do
    @agent = Mechanize.new
    @agent.user_agent = "Rich Explorer"
    @agent.get(params[:page][:url])
    haml :site
  end
end
