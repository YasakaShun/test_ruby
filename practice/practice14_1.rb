# encoding: utf-8

/^(.+)@(.+)/ =~ "test@gmail.com"

print "local: " + $1 + "\n"
print "domain: " + $2 + "\n"

