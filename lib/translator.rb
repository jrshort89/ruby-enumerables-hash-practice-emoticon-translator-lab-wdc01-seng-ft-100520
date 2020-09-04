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


def get_japanese_emoticon(emojis, emot)
  # code goes here
  ans = ""
  emojis = load_library(emojis)
  emojis.each { |key, val| 
    val.each { |key2, val2| 
      if val2 == emot
        ans = val[:japanese]
      end
  }
}
if ans == ""
  ans = "Sorry, that emoticon was not found"
end
ans
end

def get_english_meaning
  # code goes here
end