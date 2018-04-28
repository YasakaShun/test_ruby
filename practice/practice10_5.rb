# num が素数かどうかを判定
def prime?(num)
  # 数値かチェック
  return false if !num.instance_of?(Integer)
  # 1は含まない
  return false if num <= 1
  
  # 割り切れる数が見つかったら素数ではない
  2.upto(num-1) { |i|
    return false if num % i == 0
  }
  
  return true
end

# テスト
prime?("abc")
prime?(3.0)
prime?(Hash.new)

# 出力
1.upto(100) do |i|
  if prime?(i)
    puts sprintf("%3d", i)
  end
end
