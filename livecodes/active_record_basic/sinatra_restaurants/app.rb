require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require 'pry-byebug'

# As a user I can list all the restaurants -> DONE
# As a user I can see one restaurant's details -> DONE
# As a user I can add a restaurant

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get '/restaurants/:id' do
  restaurant_id = params[:id]
  @restaurant = Restaurant.find(restaurant_id)
  erb :show
end

post '/restaurants' do
  name = params[:name]
  city = params[:city]
  restaurant = Restaurant.new({ name: name, city: city })
  restaurant.save
  # redirect '/' # Redirect to root -> Index page
  redirect "/restaurants/#{restaurant.id}" # redirect to show page
end

# delete
