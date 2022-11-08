require './config/environment'

class ApplicationController < Sinatra::Base
 #homepage - shows all posts
 get '/' do
    @jobs = Job.all
    erb :index
  end  
     
end