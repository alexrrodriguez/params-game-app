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

end
