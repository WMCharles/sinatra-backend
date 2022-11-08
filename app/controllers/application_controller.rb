require './config/environment'

class ApplicationController < Sinatra::Base
 
 get '/' do
    @jobs = Job.all
    erb :index
  end  
     
end