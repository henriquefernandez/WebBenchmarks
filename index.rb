require 'sinatra'

get '/hello' do 
  text = ''
  (0..10000).each do |i|
    text = text + i.to_s
  end
  text
end