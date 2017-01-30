require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'
require './models/calculator'


get '/result' do

end

# get '/all/:num1/:num2' do
#   calculator = Calculator.new(params[:num1].to_f, params[:num2].to_i)
#   results = {
#     add: calculator.add().to_i,
#     subtract: calculator.subtract().to_i,
#     multiply: calculator.multiply().to_i,
#     divide: calculator.divide()
#   }

#   return results.to_json
# end

# get '/add/:num1/:num2' do

#   calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
#   return "The answer is #{calculator.add}."

# end

# get '/multiply/:num1/:num2' do
#   calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
#   return "The answer is #{calculator.multiply}."

# end

# get '/subtract/:num1/:num2' do
#   calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
#   return "The answer is #{calculator.subtract}."

# end

# get '/divide/:num1/:num2' do
#   calculator = Calculator.new(params[:num1].to_f, params[:num2].to_i)
#   return "The answer is #{calculator.divide}."

# end