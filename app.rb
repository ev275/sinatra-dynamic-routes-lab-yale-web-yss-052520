require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    # params[:name].reverse
    name = params[:name]
    name = name.reverse
    name
  end

  get '/square/:number' do
    number = params[:number].to_i
    # binding.pry
    (number ** 2).to_s
  end

  get '/say/:number/:phrase' do 
    number = params[:number].to_i
    phrase = params[:phrase]
    saying = ''
    number.times do
      saying += phrase
    end
    saying
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    # binding.pry

    if operation == "add"
      (num1 + num2).to_s

    elsif operation == "subtract"
      (num1 - num2).to_s

    elsif operation == "multiply"
      (num1 * num2).to_s

    elsif operation == "divide"
      (num1 / num2).to_s
    end
  end
end