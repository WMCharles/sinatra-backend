require './config/environment'

class ApplicationController < Sinatra::Base
 #homepage - shows all posts
 get '/' do
    @posts = Post.all
    erb :index
  end  
     
end