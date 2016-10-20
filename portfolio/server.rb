require "pry"

class MyServer < Sinatra::Base

   get '/' do
    erb :index
  end


end