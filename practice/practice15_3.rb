# encoding: utf-8

def tail(nline, file)
  File.open(file){ |io|
    lines = io.readlines
    # �w��s�������c��悤�ɑO����؂�̂ĂĂ���
    while nline < lines.length
      lines.shift
    end
    print lines.join()
  }
end

tail(4, "test4.txt")
