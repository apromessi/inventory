# application_controller.rb

class ApplicationController < Sinatra::Base
  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb :index
  end

  get '/about' do
    erb :about
  end

  get '/ingredients/' do
    @ingredients = Ingredient.all
    erb :'ingredients/index'
  end

  get '/ingredients/:id' do
    # The :id is passed through the URL,
    # which is accessible in the params hash.
    # Use it to assign a ingredient to an instance variable
    @ingredient = Ingredient.where(id: params[:id]).first
    erb :'ingredients/show'
  end

end
