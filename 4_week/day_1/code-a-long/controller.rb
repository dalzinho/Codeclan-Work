require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require 'json'
require './models/calculator'


get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.add()
  erb( :result )
end

get '/subtract/:num1/:num2' do

  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.subtract()
  erb (:result)
end

get '/multiply/:num1/:num2' do

  calculator = Calculator.new(params[:num1].to_i, params[:num2].to_i)
  @calculation = calculator.multiply()
  erb (:result)
end

get '/divide/:num1/:num2' do

  calculator = Calculator.new(params[:num1].to_f, params[:num2].to_i)
  @calculation = calculator.divide()
  erb (:result)
end

get '/about_us' do
  erb(:about_us)
end

get '/' do
  erb(:home)
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