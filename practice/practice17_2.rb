# encoding: utf-8

require "date"

def ls_t(path)
  entries = Dir.entries(path)
  entries.reject!{ |name| /^\./ =~ name }
  
  mtimes = Hash.new
  entries = entries.sort_by{ |name|
    mtimes[name] = File.mtime(File.join(path, name))
  }
  
  entries.each{ |name|
    printf("%-20s %s\n", name, mtimes[name])
  }
  
rescue => ex
  puts ex.message
end

ls_t(".")

