class Polynomial
  def initialize(elements=[])
  
  	@toPolynom=elements
  end

  def to_s
  	
  	str=""
  	
  size=@toPolynom.size 
  @toPolynom.each do |e|
    size-=1
###
if size>1

    if e<-1 
      
      str+= "#{e}x^#{size}"
      
    elsif  e>1 && size==@toPolynom.size-1
          str+= "#{e}x^#{size}"
     
    elsif e>1
          
         str+= "+#{e}x^#{size}"   

    else 
      str+= case e   
         when -1 then "-x^#{size}"
         when 0  then next
         when 1  then size==@toPolynom.size-1 ? "x^#{size}" : "+x^#{size}"
         else ""
         end
    end
###
elsif size==1

    if e<-1 
      
      str+= "#{e}x"
      
    elsif  e>1 && size==@toPolynom.size-1
          str+= "#{e}x"
     
    elsif e>1
          
         str+= "+#{e}x"   

    else 
      str+= case e   
         when -1 then "-x"
         when 0  then next
         when 1  then "+x"
         else ""
         end
    end
else 
  
    if e>0
        str+= "+#{e}"
    
    elsif e==0 
        next    
    else
        str+= "#{e}"
    end

 end
 end
 str.empty? ? 0.to_s : str
 end  
  
end