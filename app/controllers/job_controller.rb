class PostsController < ApplicationController

    #process job creation
  post '/jobs' do
    if !params[:job][:title].empty? && !params[:job][:description].empty? && !params[:job][:deadline].empty?
      @job = Job.new(params[:job]) #ActiveRecord handles array of category_ids from checkboxes

      if !params[:Category][:name].empty?
        @job.categories << Category.create(name: params[:category][:name]) #create new category
      end

      @job.save
      redirect to "/jobs/#{@job.slug}"
    else
      @categories = Category.all
      erb :'jobs/new', locals: {message: "Invalid input. Please fill out all the fields."}
    end
  end


    #show specific job based on title slug
  get '/jobs/:job_slug' do
    @job = Job.find_by_slug(params[:job_slug])
    erb :'jobs/show'
  end

#edit specific job 
get '/jobs/:job_slug/edit' do
    @job = Job.find_by_slug(params[:job_slug])
        @categories = category.all
        erb :'jobs/edit'  
end

#process job edit
post '/jobs/:job_slug' do
    @job = Job.find_by_slug(params[:job_slug])
    if !params[:job][:title].empty? && !params[:job][:description].empty? && !params[:job][:deadline].empty? 
      @job.update(params[:job])

      if !params[:category][:name].empty? && !params[:category][:description].empty?
        @job.categories << Category.create(name: params[:category][:name])
      end

      @job.save
      Category.delete_empty_categories
      redirect to "/jobs/#{@job.slug}"
    else
      erb :'jobs/show', locals: {message: "Invalid input. To edit a job, please fill out the fields with valid data."}
    end
       
  end

  #process job deletion
  post '/jobs/:job_slug/delete' do
    @job = Job.find_by_slug(params[:job_slug])
        @job.destroy
        Category.delete_empty_tags

        @jobs = Job.all
        erb :'index', locals: {message: "Job deleted."}
  end
end