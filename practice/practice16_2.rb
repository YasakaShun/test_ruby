# encoding: utf-8
require "find"

def du(path)
  return unless File.directory?(path)

  dirsize = 0
  #Dir.open(path){ |dir|
  Find.find(path){ |f|
    if File.file?(f)
      st = File.stat(f)
      filesize = st.size
      dirsize += filesize
      printf("%s: %d\n", f, filesize)
    end
  }
  puts "dir: #{dirsize}"
end

du("Q:/test_ruby")

