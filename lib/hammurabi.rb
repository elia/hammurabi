# HAMMURABI CODE
# Translated by L.W. King (1910) 
# Edited by Richard Hooker
# ©1996, Richard Hooker
# 
# For information contact: Richard Hines 
# Updated 6-6-1999

module Hammurabi
  extend self
  CODE = File.read(File.expand_path('../hammurabi/code.txt', __FILE__)).scan(/(\n\d+\n.+?\n)/)
  CODE.flatten!
  CODE.each(&:strip!)
  
  def law!
    CODE[rand(CODE.size)]
  end
  
  def find words
    words = words.scan(/\w+/i).flatten
    # $stdout.puts words.inspect
    
    CODE.find do |law|
      # $stdout.puts law[0..3].strip
      words.all? { |word| law =~ /\b#{word}\b/ }
    end
  end
end

if __FILE__ == $0
  p Hammurabi::CODE.size
  p Hammurabi::CODE.map{|law| law[0..3].strip.to_i}.inject(0) { |prev, curr|
    next curr if [14, 100, 112].include?(curr)
    raise "gap #{prev} #{curr}" if curr > prev+1 
    curr
  }
  p Hammurabi.find('hole')
end
