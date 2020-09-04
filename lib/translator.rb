# require modules here
require 'yaml'

def load_library(emojis)
  # code goes here
  sortedHash = {}
  emojis = YAML.load_file(emojis)
  emojis.each { |key, val| 
    sortedHash[key] = {:english => val[0], :japanese => val[1]}
  }
  sortedHash
end


def get_japanese_emoticon(emojis)
  # code goes here
  
end

def get_english_meaning
  # code goes here
end