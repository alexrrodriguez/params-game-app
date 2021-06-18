Rails.application.routes.draw do
  
  get "/query_params" => "params#display"

  get "/number_params" => "params#guess_num"

  get "/number_params/:number" => "params#guess_num"

  get "/segment_params/:this_key" => "params#segment_params"

  post "/body_params" => "params#body_params"

end
