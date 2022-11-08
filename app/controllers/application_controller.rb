require './config/environment'

class ApplicationController < Sinatra::Base
 
  # get '/jobs' do
  #   jobs = Job.all
  #   jobs.to_json
  # end 
  
  # get '/jobs/:id' do
  #   job = Job.find(params[:id])
  #   job.to_json
  # end

  # post '/jobs' do 
  #   job = Job.create(
  #       title: params[:title],
  #       description: params[:description],
  #       deadline: params[:deadline]
  #   )
  #   job.to_json
  # end

  # patch '/jobs/:id' do
  #   job = Job.find(params[:id])

  #   job.update(
  #     title: params[:title],
  #     description: params[:description],
  #     deadline: params[:deadline]
  #   )
    
  #   job.to_json 
  # end

     
end