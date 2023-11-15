require 'sinatra'

require_relative './utils/load_data'
require_relative './utils/validate'

default_headers = {
  "X-Author": ENV['AUTHOR'],
  "X-Robots-Tag": 'noindex'
}

def show_laws(number)
  data = load_data
  data.sample(number).to_json
end

before do
  headers default_headers
  content_type :json
end

get '/?:number?' do
  number = validate(params[:number])
  show_laws(number)
end
