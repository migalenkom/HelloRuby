
class Second

@array

def initialize
  @array = Array.new(10) { |i|  str=rand((Time.now - 60*60*24*365)..Time.now).strftime "%m.%d" + " " + rand(0...10).to_s }
end


def avgTempByMonth
	
		for item in @array
			
			item.match 

			#(?<month>\d{1,2}).(?<day>\d{1,2})\s-(?<tempr>\d)

			end	

	
#@array
end
end