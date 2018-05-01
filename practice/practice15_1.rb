# encoding: utf-8

def wc(file)
  linecount = wordcount = charcount = 0
  File.open(file){ |io|
    io.each{ |line|
      linecount += 1
      wordcount += line.split.reject{ |w| w.empty? }.length
      charcount += line.length
    }
  }
  
  puts "#{file} line: #{linecount}, word: #{wordcount}, char: #{charcount}"
end

wc(__FILE__)
wc("test.txt")
