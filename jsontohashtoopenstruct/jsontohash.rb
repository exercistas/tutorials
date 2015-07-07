require 'json'
require 'ostruct'

file = File.read('tohash.json')
data_hash = JSON.parse(file)
data_struct = OpenStruct.new(data_hash['tracks'][0])
puts data_struct