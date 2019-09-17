
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    
  end
  
  get '/articles/new' do
    erb :new 
  end
  
  get '/articles' do
    Article.create(title: params[:title], content: params[:content])
    @articles = Article.all 
    erb :index
    redirect to '/show'
  end
  
  get '/articles/:id' do 
    @article = Article.find_by_id(:id)
    erb :show 
  end
  
  get '/show' do
    erb :show 
  end
  
  get '/articles/:id/edit' do 
    erb :edit 
  end
  
  patch '/articles/:id' do 
    
  end
  
  delete '/articles/:id' do 
    
  end
  
  
end
