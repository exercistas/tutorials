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

lang_hash.each do |lang|
  lang.each do |lang_link|
    puts lang_link["language"] if lang_link["active"] == true
  end
end
