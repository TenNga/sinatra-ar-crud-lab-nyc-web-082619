
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
  end
  
  get '/articles' do
    @articles = Article.all 
    erb :index
  end
  
  get '/articles/:id' do 
    @
  end
  
  get '/show' do
    erb :show 
  end
  
  get '/articles/new' do
    erb :new 
  end
end
