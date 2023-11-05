require 'sinatra'
require_relative './utils/load_data'

def show_laws(number)
  data = load_data()
  data.sample(number).to_json
end

def validate(number)
  number = number.to_i.nonzero? || 1
  number = number > 50 ? 50 : number
end

before do
  content_type :json
end

get '/?:number?' do
  number = validate(params[:number])
  show_laws(number)
end