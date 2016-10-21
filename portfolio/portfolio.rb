require 'sinatra'
require 'pony'
require 'sendgrid-ruby'
include SendGrid

get '/' do
  erb :index
end

# post '/contact' do
# 	Pony.mail :to => '',
# 			  :from => 'portfolio',
# 			  :subject => params[:subject],
# 			  :body => "fn: #{params[:first_name]}; ln: #{params[:last_name]}; email: #{params[:email]}; message: #{params[:message]}"

# 	redirect back
# end

post '/contact' do

  from = Email.new(email: 'omeara.christie@gmail.com')
  subject = 'Hello World from the SendGrid Ruby Library!'
  to = Email.new(email: 'omeara.christie@gmail.com')
  content = Content.new(type: 'text/plain', value: "#{params[:message]}")
  mail = Mail.new(from, subject, to, content)

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers

end

