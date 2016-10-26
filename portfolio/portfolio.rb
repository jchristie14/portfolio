require 'sinatra'
require 'pony'
require 'sendgrid-ruby'
require 'json'
include SendGrid

get '/' do
  erb :index
end



post '/contact' do


  from = Email.new(email: "portfolio@mail")
  subject = "From portfolio"
  to = Email.new(email: ENV['email'])
  content = Content.new(type: 'text/plain', value: "first name: #{params[:first_name]}; last name: #{params[:last_name]} \n Subject: #{params[:subject]} \n message: #{params[:message]} \n email: #{params[:email]}")
  mail = SendGrid::Mail.new(from, subject, to, content)
  puts mail.to_json

  sg = SendGrid::API.new(api_key: ENV['SENDGRID_API'])
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  puts response.status_code
  puts response.body
  puts response.headers


  redirect back

end


