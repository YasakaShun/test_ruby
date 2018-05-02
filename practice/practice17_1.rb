# encoding: utf-8

require "date"

def jparsedate(str)
  pattern = /(午前|午後)?(\d+)(年|月|日|時|分|秒)/
  
  time = DateTime.now
  year = time.year
  month = time.month
  day = time.day
  hour = time.hour
  min = time.min
  sec = time.sec

  str.scan(pattern){ |word|
    case $3
    when "年"
      year = $2.to_i
    when "月"
      month = $2.to_i
    when "日"
      day = $2.to_i
    when "時"
      hour = $2.to_i
      hour += 12 if $1 == "午後"
    when "分"
      min = $2.to_i
    when "秒"
      sec = $2.to_i
    end
  }
  
  return Time.mktime(year, month, day, hour, min, sec)
end

puts jparsedate("2018年4月30日午後8時15分40秒")
puts jparsedate("2018年8月6日")

