class Third

def initialize
  @hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: 30, key: 'some value', 'yesterday1' => 34, 'yesteryear' => 2014}; 
end


#найти количество ключей, значение которых начинается на "yes"

def findYesKeys
keysCount=0
	
@hash.keys.each do  |key|  

	if key.to_s.include?"yes"
		keysCount+=1		
	end  
end
	
keysCount

end
end