require 'find'

def replace(path, ext, pattern, replacement)
  Find.find(path) { |fpath|
    next if fpath == "."
    # 拡張子チェック
    next unless fpath =~ ext
    
    # 一度バッファに確保
    buffer = File.open(fpath, "r") { |file|
      file.read()
    }
    
    # バッファ置換
    buffer.gsub!(pattern, replacement)
    
    # バッファの内容をファイルに書き込み
    File.open(fpath, "w") { |file|
      file.write(buffer)
    }
  }
end

replace(".", /.[txt|md]$/, /text/, "hogefoobar")
