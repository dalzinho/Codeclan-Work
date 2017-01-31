require( 'sinatra' )
require( 'sinatra/contrib/all' )
require( 'pry-byebug' )
require './models/pizza'

# get all pizzas (index)
get '/pizzas' do
  @pizzas = Pizza.all()
  erb (:index)
end

# new pizza form (new)
get '/pizzas/new' do
  erb(:new)
end

# send the form just made above (create)
post '/pizzas' do

end

# get a pizza by id (show)
get '/pizzas/:id' do
  @pizza = Pizza.find(params[:id])
  erb (:show)
end

# delete a pizza by id (destroy)
post '/pizzas/:id/delete' do
  Pizza.destroy(params[:id])
  redirect to ('/pizzas')
end

# request (edit) pizza form
get '/pizzas/:id/edit' do

end

# actually (update) the pizza by id
post '/pizzas/:id/edit' do

end