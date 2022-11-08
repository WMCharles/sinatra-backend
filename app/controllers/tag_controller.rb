class TagController < Sinatra::Base 
    get '/tags' do 
        tags = Tag.all 
        tags.to_json
    end
end