require 'sinatra/base'
require 'sinatra/json'
require_relative './courses.rb'

class HTMLServer < Sinatra::Base

  get '/' do
    erb :homepage
  end

  get '/learners' do
    erb :learners
  end

  get '/districts' do
    erb :districts
  end

  get '/course/:name' do
    erb :course
  end
  
  get '/internal/api/course/:name' do
    name = params["name"]
    topics = Courses.find(name)
    json({name: name, topics: topics})
  end
end
