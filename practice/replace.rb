require 'find'

def replace(path, ext, pattern, replacement)
  Find.find(path) { |fpath|
    next if fpath == "."
    # �g���q�`�F�b�N
    next unless fpath =~ ext
    
    # ��x�o�b�t�@�Ɋm��
    buffer = File.open(fpath, "r") { |file|
      file.read()
    }
    
    # �o�b�t�@�u��
    buffer.gsub!(pattern, replacement)
    
    # �o�b�t�@�̓��e���t�@�C���ɏ�������
    File.open(fpath, "w") { |file|
      file.write(buffer)
    }
  }
end

replace(".", /.[txt|md]$/, /text/, "hogefoobar")
