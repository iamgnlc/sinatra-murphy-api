require 'json'

def load_data
  data = File.read('./db/data.json')
  hash = JSON.parse(data)
end
