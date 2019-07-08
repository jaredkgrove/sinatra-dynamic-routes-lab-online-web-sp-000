require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse!
    @reversename
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_f ** 2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]

    @phrase * @number.to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{@word1 + @word2 + @word3 + @word4 + @word5}"
  end

  get "/:operation/:number1/:number2" do

  end

end
# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string containing all five words (i.e. word1 word2 word3 word4 word5).
#
# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
