require 'sinatra'

require_relative 'utils/load_data'
require_relative 'utils/validate'

MAX_LAWS = 50

default_headers = {
  'X-Author': ENV.fetch('AUTHOR', nil),
  'X-Robots-Tag': 'noindex'
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
  number = validate(params[:number], 1, MAX_LAWS)
  show_laws(number)
end
