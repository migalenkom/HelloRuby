#написать рекурсивный метод, который будет переводить ключи стринговые ключи в символьные"
#найти количество ключей, значение которых начинается на "yes"

class Fourth
 
def initialize
  @hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', :yesss => :fg, try: {'yesterday1' => 34, 'yesteryear' => 2014}, key: [{'yes' => 23, 'b' => 'travel'}], 'yesterday1' => 34, 'yesteryear' => 2014}

end


def symbol_keys(hash=@hash)
  
    hash.inject({}){|result, (key, value)|
      new_key = case key
              when String then key.to_sym
              else key
              end
    new_value = case value
                when Hash then symbol_keys(value)
                else value
                end
    result[new_key] = new_value
    result
  }

end

def sym_keys(hash=@hash)
   new={}
   hash.map do |key,value|
        if value.is_a?(Hash)
          value = sym_keys(value) 
        end
        if key.kind_of? String
        new[key.to_sym]=value
    	else
    		new[key]=value
    	end

   end        
   return new

end  
end
