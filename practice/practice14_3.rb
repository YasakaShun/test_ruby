# encoding: utf-8

def word_capitalize(str)
  ary = str.split(/\-/)
  ary.each { |s| s.capitalize! }
  
  return ary.join("-")
end

p word_capitalize("in-repry-to")
p word_capitalize("X-MAILER")

