require 'json'

def load_data
  data = File.read('./db/data.json')
  JSON.parse(data)
end
