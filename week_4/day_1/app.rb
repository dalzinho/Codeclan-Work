require 'sinatra'
require 'sinatra/contrib/all'

get "/" do 
  "¡Buenos días a todo el mundo!"
end

get "/roll-die" do
  "Rolling the die...#{rand(1..6)}"
end


get "/name/:first/:last" do
  return "Hello #{params[:first].capitalize} #{params[:last].capitalize}!!!"
end

get "/captains/:number" do
  captains = ["Kirk", "Picard", "Janeway", "Sisko"]
  index = params["number"].to_i
  return captains[index]
end