require 'sinatra/base'
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
    @name = params["name"]
    @topics = Courses.find(@name)
    erb :course
  end
  
end
