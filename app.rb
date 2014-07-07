
class SimplnizeApp < Sinatra::Base
  get '/' do
    agent = Mechanize.new
    "Hola #{agent.get("https://google.com").title}"
  end
end
