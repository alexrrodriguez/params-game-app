class ParamsController < ApplicationController

  def display
    input_value = params["my_name"]
    output_message = input_value.upcase
    # render json: {message: "My name is #{input_value.upcase}"}

    if input_value.upcase[0] == "A"
      output_message = "Hey, your name starts with the first letter of the alphabet!"
    end
    render json: {message: output_message}
  end

  

  def guess_num
    winning_number = 36
    input_value = params["number"].to_i
  
    if input_value > winning_number
      output_message = "too high!"
    elsif input_value < winning_number
      output_message = "too low!"
    elsif input_value == winning_number 
      output_message = "correct"
    end
    render json: {message: output_message}
  end

  def segment_params
    input_value = params["this_key"]
    render json: {message: "This value is #{input_value}"}
  end

  def body_params
    input_value = params["secret_info"]
    render json: { message: "the secret info is #{input_value}"}
  end

  def username
    user = "hugh"
    pass = "swordfish"
    username = params[:username]
    password = params[:password]
    if user == username && pass == password
      render json: {message: "Valid credentials"}
    else
      render json: {message: "Invalid credentials"}
    end
  end

end
