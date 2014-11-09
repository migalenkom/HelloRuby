class Polynomial
  def initialize(elements=[])
  
  	@toPolynom=elements
  end

  def to_s
  	
  	str=""
  	
  	size=@toPolynom.size
  	count =-1
  	@toPolynom.each do |e|  

  	size-=1
  	
  	if size==0 then
   	     next
   	end
   	if size==1 then
		str+="#{e}x+"
   	else


  	puts str+="#{e}x^#{size}+"
	end	
  	end	
  	str+=@toPolynom[-1].to_s
  	
  end
end
