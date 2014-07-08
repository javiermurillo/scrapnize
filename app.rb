class ScrapnizeApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  get '/' do
    agent = Mechanize.new
    "Hello title: #{agent.get("https://google.com").title}"
  end
end
