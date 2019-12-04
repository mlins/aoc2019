puts File.readlines('01a.txt').map { |m| Integer(m)/3-2 }.sum
