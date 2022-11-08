class CategoriesController < Sinatra::Base
    get '/categories' do
        "Category Index"
      end
    
      get '/categories/:id' do
        "Category #{params[:id]} Show"
      end
end
