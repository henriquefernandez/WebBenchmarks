require 'sinatra'
require 'json'

get '/10000' do
  text = ''
  (0..10000).each do |i|
    text = text + i.to_s
  end
  text
end

get '/1000' do
  text = ''
  (0..1000).each do |i|
    text = text + i.to_s
  end
  text
end

get '/100' do
  text = ''
  (0..100).each do |i|
    text = text + i.to_s
  end
  text
end

get '/' do
  {text: 'benckmark'}.to_json
end