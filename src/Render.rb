#!/usr/bin/env ruby

require 'ruby_figlet'
using RubyFiglet

def render_figlet(text, font)
  title = RubyFiglet::Figlet.new text, font
  title.show
end

def render_box(text)
  puts "+-#{'-' * text.length}-+"
  puts "| #{text} |"
  puts "+-#{'-' * text.length}-+"
end
