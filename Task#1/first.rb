class First

def initialize
  @matrix = Array.new(4) { Array.new(4) { |index|  rand(-10..10)} }

end

def sumOfMinus
sum=0	
	
for item in @matrix
	for cell in item
		if cell.to_i < 0
			 puts cell
			 sum+=cell.to_i
		end	
	end
end
"Sum of neganive elements="+sum.to_s

end
end