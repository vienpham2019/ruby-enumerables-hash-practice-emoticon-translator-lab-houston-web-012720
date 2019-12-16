# require modules here
require "yaml"
require "pry"

def load_library(path)
  # code goes here
  emoticons = YAML.load_file(path)
  new_hash = {}
  new_hash["get_emoticon"] = {}
  new_hash["get_meaning"] = {}
  emoticons.each{|e,array|
    new_hash["get_meaning"][array[1]] = e
    new_hash["get_emoticon"][array[0]] = array[1]
  }
  new_hash
end
  
def get_japanese_emoticon(path,emoticons)
  binding.pry
  # code goes here
  my_data = load_library(path)
  if my_data["get_emoticon"][emoticons]
end

def get_english_meaning
  # code goes here
end