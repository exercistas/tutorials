require 'json'
require 'ostruct'
require 'pp'

file = File.read('tohash.json')
data_hash = JSON.parse(file)
data_struct = OpenStruct.new(data_hash)
puts data_struct
