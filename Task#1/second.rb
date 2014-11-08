class Second

def initialize
	@array = Array.new(40){str=rand((Time.now - 60*60*24*365)..Time.now).strftime "%d.%m" + " " + rand(-20..30).to_s}
end

def avgTemp
	
	@hash={}
	@povtor=Array.new(12){item =0}
	
	@array.each do |item| 
		month = item[3..4].to_i
		@povtor[month-1] +=1
	end

	for item in @array
		month = item[3..4].to_i
		temp = item[6..-1].to_i
		
		if @hash.has_key?(month) 
			temp2 = @hash.fetch(month).to_i
			temp+=temp2
		end

		@hash[month] = temp
	end
	
	count=0
	@povtor.each do |item| 
		count+=1
		
		if item!=0 
	
			@hash[count] = (@hash.fetch(count)/item).to_f
		end
	end
#month.at(count) = /.(\d{2})/.match(item).captures	
puts @array
puts @povtor
@hash
end
end