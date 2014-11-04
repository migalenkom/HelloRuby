
class Second

@array

def initialize
  @array = Array.new(10) { |i|  str=rand((Time.now - 60*60*24*365)..Time.now).strftime "%m.%d" + " " + rand(0...10).to_s }
end


def avgTempByMonth
	
	array=(1..12).to_a
	count=0
	for item in @array
		
		count++
		month,day,tempr = /(\d{1,2}).(\d{1,2})\s(\d)/.match(item).captures


	end	
	
#@array
end
end