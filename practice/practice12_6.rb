# encoding: utf-8

def kan2num(str)

  ret = 0
  tmp = 0
  str.each_char{ |c|
    case c
    when "一"
      tmp = 1
    when "二"
      tmp = 2
    when "三"
      tmp = 3
    when "四"
      tmp = 4
    when "五"
      tmp = 5
    when "六"
      tmp = 6
    when "七"
      tmp = 7
    when "八"
      tmp = 8
    when "九"
      tmp = 9
    when "十"
      if tmp == 0
        ret += 10
      else
        ret += tmp * 10
        tmp = 0
      end
    when "百"
      if tmp == 0
        ret += 100
      else
        ret += tmp * 100
        tmp = 0
      end
    when "千"
      if tmp == 0
        ret += 1000
      else
        ret += tmp * 1000
        tmp = 0
      end
    end
  }
  ret += tmp

  return ret

end

p kan2num("七千百二十三")
p kan2num("四千八百十一")
p kan2num("千十")

p kan2num("千八百二十三")
p kan2num("八百二十三")
p kan2num("百二十三")
p kan2num("百三")
p kan2num("二十三")
p kan2num("十三")
p kan2num("三")
