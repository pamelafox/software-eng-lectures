require 'sinatra/base'
require "sinatra/json"
require_relative './courses.rb'

class HTMLServer < Sinatra::Base

  get '/course/:name' do
    name = params["name"]
    topics = Courses.find(name)
    json({name: name, topics: topics})
  end
  
end
