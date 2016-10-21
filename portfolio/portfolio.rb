require 'sinatra'
require 'pony'
require 'sendgrid-ruby'
require 'json'
include SendGrid

get '/' do
  erb :index
end



post '/contact' do


  from = Email.new(email: "#{params[:email]}")
  subject = "#{params[:subject]}"
  to = Email.new(email: 'omear.christie@gmail.com')
  content = Content.new(type: 'text/plain', value: "first name: #{params[:first_name]}; last name: #{params[:last_name]} \n message: #{params:message}")
  mail = SendGrid::Mail.new(from, subject, to, content)
  puts mail.to_json

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers


  redirect back

end


