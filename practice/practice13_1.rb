# encoding: utf-8

wday = Hash.new
wday["sunday"] = "日曜日"
wday["monday"] = "月曜日"
wday["tuesday"] = "火曜日"
wday["wednesday"] = "水曜日"
wday["thursday"] = "木曜日"
wday["friday"] = "金曜日"
wday["saturday"] = "土曜日"

printf("wday.length: %d\n", wday.length)

wday.each { |key, value|
  printf("「%s」は%sのことです。\n", key, value)
}

