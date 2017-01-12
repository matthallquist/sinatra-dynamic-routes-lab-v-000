require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = ""
    @number.times {@phrase += "#{params[:phrase]}\n"}
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "subtract"
    "#{params[:number1].to_i-params[:number2].to_i}"
    elsif params[:operation] == "add"
    "#{params[:number1].to_i+params[:number2].to_i}"
    elsif params[:operation] == "multiply"
    "#{params[:number1].to_i*params[:number2].to_i}"
    elsif params[:operation] == "divide"
    "#{params[:number1].to_i/params[:number2].to_i}"
    end
  end
end
