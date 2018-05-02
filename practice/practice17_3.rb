# encoding: utf-8

require "date"

module Calendar

  module_function
  def cal(year, month)
    first = Date.new(year, month, 1)
    last = Date.new(year, month, -1)
    offs = first.wday
    
    # •\Ž¦•”
    puts first.strftime("%B %Y").center(20)
    puts "Su Mo Tu We Th Fr Sa"

    # 1“ú–Ú‚Ì‘O‚Ì‹ó”’
    if offs != 0
      print "   " * (offs - 1) + "  "
    end

    # Še“ú
    first.day.upto(last.day){ |day|
      top = ((offs + day - 1) % 7 == 0)
      tail = ((offs + day) % 7 == 0)

      if top
        printf("%2d", day)
      elsif tail
        printf(" %2d\n", day)
      else
        printf(" %2d", day)
      end
    }
    print("\n")
  end

end

t = Date.today
1.upto(12){ |i|
  Calendar.cal(t.year, i)
}

