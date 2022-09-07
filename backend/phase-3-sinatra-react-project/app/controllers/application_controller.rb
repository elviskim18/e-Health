class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  configure do
    set :views, 'app/views'
    enable :sessions
    set :session_secret, "secret"
  end


  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

end
