class PrimePalindromes

def initialize
  @prime =  (1..1000).select {|x| (1..x).select{|y|x%y==0}.size==2 }
end

def findPalindromes

 @primePalindromes = @prime.select { |el| el.to_s==el.to_s.reverse  }
end

def printByRule

 tmp = @primePalindromes

  @primePalindromes.size.times do

    puts "#{tmp}"
    tmp.push(tmp[0])
    tmp.delete_at(0)

  end

end

end

p= PrimePalindromes.new
p.findPalindromes
p.printByRule