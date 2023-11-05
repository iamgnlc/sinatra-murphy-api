require 'sinatra'

require_relative './utils/load_data'
require_relative './utils/validate'

def show_laws(number)
  data = load_data()
  data.sample(number).to_json
end

before do
  headers "X-Author": ENV['AUTHOR']
  content_type :json
end

get '/env' do
  if settings.development?
    return "dev"
  elsif settings.production?
    return "prod"
  end
end

get '/?:number?' do
  number = validate(params[:number])
  show_laws(number)
end