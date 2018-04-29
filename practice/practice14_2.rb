# encoding: utf-8

str = "オブジェクト指向は難しい！なんて難しいんだ！"

str2 = str.sub(/難しい/, "簡単だ").sub(/難しいんだ/, "簡単なんだ")

p str2

