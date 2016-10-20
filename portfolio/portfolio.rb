require 'sinatra'
require 'pony'

get '/' do
  erb :index
end

post '/contact' do
	#params.to_s

	Pony.mail :to => ENV["email"],
			  :from => 'portfolio',
			  :subject => params[:subject],
			  :body => "fn: #{params[:first_name]}; ln: #{params[:last_name]}; email: #{params[:email]}; message: #{params[:message]}"

	redirect back
end