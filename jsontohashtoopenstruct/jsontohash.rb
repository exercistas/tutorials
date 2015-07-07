require 'json'
require 'ostruct'

file = File.read('tohash.json')
data_hash = JSON.parse(file)
data_struct = OpenStruct.new(data_hash)
# data_struct = OpenStruct.new(data_hash['tracks'][0])
puts data_struct

def foo_list items
  content_tag :ul do
      items.collect {|item| concat(content_tag(:li, item))}
  end
end
