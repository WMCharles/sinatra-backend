class CategoriesController < Sinatra::Base
    get '/categories' do
        "Category Index"
      end
    
      get '/categories/:id' do
        "Category #{params[:id]} Show"
      end
end
# class Category < ApplicationController
#     get '/categories' do
#       @categories = Category.all
#       erb :'categories/index'
#     end
  
#     get '/categories/:category_slug' do
#       @category = Category.find_by_slug(params[:category_slug])
#       erb :'categories/show'
#     end
#   end