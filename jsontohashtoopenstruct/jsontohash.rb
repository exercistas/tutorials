require 'json'
require 'ostruct'

file = File.read('tohash.json')
data_hash = JSON.parse(file)
data_struct = OpenStruct.new(data_hash)
lang_hash = {}

for lang in 0...data_struct.tracks.length do
	language = data_struct.tracks[lang]["language"]
	slug = data_struct.tracks[lang]["slug"]
	active = data_struct.tracks[lang]["active"]
	lang_hash[:"#{slug}"] = OpenStruct.new(:language => language, :slug => slug, :active => active)
end 


def foo_list items
  content_tag :ul do
      items.collect {|item| concat(content_tag(:li, item))}
  end
end