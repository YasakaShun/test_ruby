# encoding: utf-8

def print_libraries
  $:.each{ |path|
    next unless File.directory?(path)
    Dir.open(path){ |dir|
      dir.each{ |name|
        next unless /\.rb$/ =~ name
        puts name
      }
    }
  }
end

print_libraries
